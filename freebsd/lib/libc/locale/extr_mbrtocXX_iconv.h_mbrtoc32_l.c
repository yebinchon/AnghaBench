
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _citrus_iconv {TYPE_1__* cv_shared; } ;
typedef int mbstate_t ;
typedef int locale_t ;
typedef scalar_t__ charXX_t ;
struct TYPE_6__ {char* bytes; scalar_t__* widechar; } ;
struct TYPE_7__ {int initialized; int srcbuf_len; int dstbuf_len; char* srcbuf; TYPE_2__ dstbuf; struct _citrus_iconv iconv; } ;
typedef TYPE_3__ _ConversionState ;
struct TYPE_8__ {int mbrtocXX; } ;
struct TYPE_5__ {int ci_discard_ilseq; int * ci_hooks; } ;


 int CODESET ;
 int E2BIG ;
 int EILSEQ ;
 int EINVAL ;
 int FIX_LOCALE (int ) ;
 int UTF_XX_INTERNAL ;
 TYPE_4__* XLOCALE_CTYPE (int ) ;
 int _citrus_iconv_convert (struct _citrus_iconv*,char**,size_t*,char**,size_t*,int ,size_t*) ;
 scalar_t__ _citrus_iconv_open (struct _citrus_iconv**,int ,int ) ;
 int assert (int) ;
 int errno ;
 int memcpy (char*,char const*,size_t) ;
 int memmove (char*,char*,int) ;
 int nl_langinfo_l (int ,int ) ;

size_t
mbrtocXX_l(charXX_t * __restrict pc, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps, locale_t locale)
{
 _ConversionState *cs;
 struct _citrus_iconv *handle;
 size_t i, retval;
 charXX_t retchar;

 FIX_LOCALE(locale);
 if (ps == ((void*)0))
  ps = &(XLOCALE_CTYPE(locale)->mbrtocXX);
 cs = (_ConversionState *)ps;
 handle = &cs->iconv;


 if (s == ((void*)0) || !cs->initialized) {
  if (_citrus_iconv_open(&handle,
      nl_langinfo_l(CODESET, locale), UTF_XX_INTERNAL) != 0) {
   cs->initialized = 0;
   errno = EINVAL;
   return (-1);
  }
  handle->cv_shared->ci_discard_ilseq = 1;
  handle->cv_shared->ci_hooks = ((void*)0);
  cs->srcbuf_len = cs->dstbuf_len = 0;
  cs->initialized = 1;
  if (s == ((void*)0))
   return (0);
 }


 if (cs->dstbuf_len > 0) {
  retval = (size_t)-3;
  goto return_char;
 }


 if (n > sizeof(cs->srcbuf) - cs->srcbuf_len)
  n = sizeof(cs->srcbuf) - cs->srcbuf_len;
 memcpy(cs->srcbuf + cs->srcbuf_len, s, n);


 for (i = 0; ; i++) {
  char *src, *dst;
  size_t srcleft, dstleft, invlen;
  int err;

  src = cs->srcbuf;
  srcleft = cs->srcbuf_len + n;
  dst = cs->dstbuf.bytes;
  dstleft = i * sizeof(charXX_t);
  assert(srcleft <= sizeof(cs->srcbuf) &&
      dstleft <= sizeof(cs->dstbuf.bytes));
  err = _citrus_iconv_convert(handle, &src, &srcleft,
      &dst, &dstleft, 0, &invlen);
  cs->dstbuf_len = (dst - cs->dstbuf.bytes) / sizeof(charXX_t);


  if (cs->dstbuf_len > 0) {
   assert(src - cs->srcbuf > cs->srcbuf_len);
   retval = src - cs->srcbuf - cs->srcbuf_len;
   cs->srcbuf_len = 0;
   goto return_char;
  }


  if (err == E2BIG)
   continue;


  if (invlen > 0) {
   cs->srcbuf_len = 0;
   errno = EILSEQ;
   return ((size_t)-1);
  }


  memmove(cs->srcbuf, src, srcleft);
  cs->srcbuf_len = srcleft;
  return ((size_t)-2);
 }

return_char:
 retchar = cs->dstbuf.widechar[0];
 memmove(&cs->dstbuf.widechar[0], &cs->dstbuf.widechar[1],
     --cs->dstbuf_len * sizeof(charXX_t));
 if (pc != ((void*)0))
  *pc = retchar;
 if (retchar == 0)
  return (0);
 return (retval);
}
