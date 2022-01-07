
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
typedef int charXX_t ;
struct TYPE_6__ {char* bytes; int * widechar; } ;
struct TYPE_7__ {int initialized; int srcbuf_len; TYPE_2__ srcbuf; struct _citrus_iconv iconv; } ;
typedef TYPE_3__ _ConversionState ;
struct TYPE_8__ {int cXXrtomb; } ;
struct TYPE_5__ {int ci_discard_ilseq; int * ci_hooks; } ;


 int CODESET ;
 int EILSEQ ;
 int EINVAL ;
 int FIX_LOCALE (int ) ;
 size_t MB_CUR_MAX_L (int ) ;
 int UTF_XX_INTERNAL ;
 TYPE_4__* XLOCALE_CTYPE (int ) ;
 int _citrus_iconv_convert (struct _citrus_iconv*,char**,size_t*,char**,size_t*,int ,size_t*) ;
 scalar_t__ _citrus_iconv_open (struct _citrus_iconv**,int ,int ) ;
 int assert (int) ;
 int errno ;
 int nl_langinfo_l (int ,int ) ;

size_t
cXXrtomb_l(char * __restrict s, charXX_t c, mbstate_t * __restrict ps,
    locale_t locale)
{
 _ConversionState *cs;
 struct _citrus_iconv *handle;
 char *src, *dst;
 size_t srcleft, dstleft, invlen;
 int err;

 FIX_LOCALE(locale);
 if (ps == ((void*)0))
  ps = &(XLOCALE_CTYPE(locale)->cXXrtomb);
 cs = (_ConversionState *)ps;
 handle = &cs->iconv;


 if (s == ((void*)0) || !cs->initialized) {
  if (_citrus_iconv_open(&handle, UTF_XX_INTERNAL,
      nl_langinfo_l(CODESET, locale)) != 0) {
   cs->initialized = 0;
   errno = EINVAL;
   return (-1);
  }
  handle->cv_shared->ci_discard_ilseq = 1;
  handle->cv_shared->ci_hooks = ((void*)0);
  cs->srcbuf_len = 0;
  cs->initialized = 1;
  if (s == ((void*)0))
   return (1);
 }

 assert(cs->srcbuf_len < sizeof(cs->srcbuf.widechar) / sizeof(charXX_t));
 cs->srcbuf.widechar[cs->srcbuf_len++] = c;


 src = cs->srcbuf.bytes;
 srcleft = cs->srcbuf_len * sizeof(charXX_t);
 dst = s;
 dstleft = MB_CUR_MAX_L(locale);
 err = _citrus_iconv_convert(handle, &src, &srcleft, &dst, &dstleft,
     0, &invlen);


 if (err == EINVAL)
  return (0);
 cs->srcbuf_len = 0;


 if (dst == s) {
  errno = EILSEQ;
  return ((size_t)-1);
 }
 return (dst - s);
}
