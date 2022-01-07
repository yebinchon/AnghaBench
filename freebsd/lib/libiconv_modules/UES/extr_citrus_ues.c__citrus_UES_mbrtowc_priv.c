
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int uint32_t ;
struct TYPE_7__ {int chlen; char* ch; } ;
typedef TYPE_1__ _UESState ;
struct TYPE_8__ {int mode; } ;
typedef TYPE_2__ _UESEncodingInfo ;


 int EILSEQ ;
 int ESCAPE ;
 int MODE_C99 ;


 int UCS4_MAX ;
 int _citrus_UES_init_state (TYPE_2__*,TYPE_1__*) ;
 int is_basic (int) ;
 int is_hi_surrogate (int) ;
 int is_lo_surrogate (int) ;
 int memmove (char*,char*,int) ;
 int surrogate_to_ucs (int,int) ;
 int to_int (int) ;

__attribute__((used)) static int
_citrus_UES_mbrtowc_priv(_UESEncodingInfo * __restrict ei,
    wchar_t * __restrict pwc, char ** __restrict s, size_t n,
    _UESState * __restrict psenc, size_t * __restrict nresult)
{
 char *s0;
 int ch, head, num, tail;
 wchar_t hi, wc;

 if (*s == ((void*)0)) {
  _citrus_UES_init_state(ei, psenc);
  *nresult = 0;
  return (0);
 }
 s0 = *s;

 hi = (wchar_t)0;
 tail = 0;

surrogate:
 wc = (wchar_t)0;
 head = tail;
 if (psenc->chlen == head) {
  if (n-- < 1)
   goto restart;
  psenc->ch[psenc->chlen++] = *s0++;
 }
 ch = (unsigned char)psenc->ch[head++];
 if (ch == ESCAPE) {
  if (psenc->chlen == head) {
   if (n-- < 1)
    goto restart;
   psenc->ch[psenc->chlen++] = *s0++;
  }
  switch (psenc->ch[head]) {
  case 129:
   tail += 6;
   break;
  case 128:
   if (ei->mode & MODE_C99) {
    tail = 10;
    break;
   }

  default:
   tail = 0;
  }
  ++head;
 }
 for (; head < tail; ++head) {
  if (psenc->chlen == head) {
   if (n-- < 1) {
restart:
    *s = s0;
    *nresult = (size_t)-2;
    return (0);
   }
   psenc->ch[psenc->chlen++] = *s0++;
  }
  num = to_int((int)(unsigned char)psenc->ch[head]);
  if (num < 0) {
   tail = 0;
   break;
  }
  wc = (wc << 4) | num;
 }
 head = 0;
 switch (tail) {
 case 0:
  break;
 case 6:
  if (hi != (wchar_t)0)
   break;
  if ((ei->mode & MODE_C99) == 0) {
   if (is_hi_surrogate(wc) != 0) {
    hi = wc;
    goto surrogate;
   }
   if ((uint32_t)wc <= 0x7F ||
       is_lo_surrogate(wc) != 0)
    break;
   goto done;
  }

 case 10:
  if (is_basic(wc) == 0 && (uint32_t)wc <= UCS4_MAX &&
      is_hi_surrogate(wc) == 0 && is_lo_surrogate(wc) == 0)
   goto done;
  *nresult = (size_t)-1;
  return (EILSEQ);
 case 12:
  if (is_lo_surrogate(wc) == 0)
   break;
  wc = surrogate_to_ucs(hi, wc);
  goto done;
 }
 ch = (unsigned char)psenc->ch[0];
 head = psenc->chlen;
 if (--head > 0)
  memmove(&psenc->ch[0], &psenc->ch[1], head);
 wc = (wchar_t)ch;
done:
 psenc->chlen = head;
 if (pwc != ((void*)0))
  *pwc = wc;
 *nresult = (size_t)((wc == 0) ? 0 : (s0 - *s));
 *s = s0;

 return (0);
}
