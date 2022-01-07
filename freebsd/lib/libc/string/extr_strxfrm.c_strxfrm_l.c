
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct xlocale_collate {scalar_t__ __collate_load_error; } ;
typedef TYPE_1__* locale_t ;
struct TYPE_5__ {scalar_t__* components; } ;


 int FIX_LOCALE (TYPE_1__*) ;
 size_t XLC_COLLATE ;
 size_t _collate_sxfrm (struct xlocale_collate*,int *,char*,size_t) ;
 int free (int *) ;
 int * malloc (size_t) ;
 size_t mbstowcs_l (int *,char const*,size_t,TYPE_1__*) ;
 int strlcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

size_t
strxfrm_l(char * __restrict dest, const char * __restrict src, size_t len, locale_t locale)
{
 size_t slen;
 size_t xlen;
 wchar_t *wcs = ((void*)0);

 FIX_LOCALE(locale);
 struct xlocale_collate *table =
  (struct xlocale_collate*)locale->components[XLC_COLLATE];

 if (!*src) {
  if (len > 0)
   *dest = '\0';
  return (0);
 }






 slen = strlen(src);

 if (table->__collate_load_error)
  goto error;

 if ((wcs = malloc((slen + 1) * sizeof (wchar_t))) == ((void*)0))
  goto error;

 if (mbstowcs_l(wcs, src, slen + 1, locale) == (size_t)-1)
  goto error;

 if ((xlen = _collate_sxfrm(table, wcs, dest, len)) == (size_t)-1)
  goto error;

 free(wcs);

 if (len > xlen) {
  dest[xlen] = 0;
 } else if (len) {
  dest[len-1] = 0;
 }

 return (xlen);

error:

 free(wcs);
 strlcpy(dest, src, len);

 return (slen);
}
