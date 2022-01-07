
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int escape_t ;
struct TYPE_4__ {scalar_t__ chlen; int * ch; int * inuse; } ;
typedef TYPE_1__ _HZState ;
typedef int _HZEncodingInfo ;


 int E2BIG ;
 int EINVAL ;
 int ESC (int *) ;
 int ESCAPE_CHAR ;
 int * INIT0 (int *) ;
 int _citrus_HZ_init_state (int *,TYPE_1__*) ;
 int memcpy (char*,int *,scalar_t__) ;

__attribute__((used)) static __inline int
_citrus_HZ_put_state_reset(_HZEncodingInfo * __restrict ei,
    char * __restrict s, size_t n, _HZState * __restrict psenc,
    size_t * __restrict nresult)
{
 escape_t *candidate;

 if (psenc->chlen != 0 || psenc->inuse == ((void*)0))
  return (EINVAL);
 candidate = INIT0(ei);
 if (psenc->inuse != candidate) {
  if (n < 2)
   return (E2BIG);
  n -= 2;
  psenc->ch[psenc->chlen++] = ESCAPE_CHAR;
  psenc->ch[psenc->chlen++] = ESC(candidate);
 }
 if (n < 1)
  return (E2BIG);
 if (psenc->chlen > 0)
  memcpy(s, psenc->ch, psenc->chlen);
 *nresult = psenc->chlen;
 _citrus_HZ_init_state(ei, psenc);

 return (0);
}
