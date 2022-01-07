
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct tm {int dummy; } ;
typedef int mbstate_t ;
typedef int locale_t ;


 int EINVAL ;
 int FIX_LOCALE (int ) ;
 size_t MB_CUR_MAX ;
 size_t SIZE_T_MAX ;
 int errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 size_t mbsrtowcs_l (int *,char const**,size_t,int *,int ) ;
 scalar_t__ strftime_l (char*,size_t,char*,struct tm const*,int ) ;
 size_t wcsrtombs_l (char*,int const**,size_t,int *,int ) ;

size_t
wcsftime_l(wchar_t * __restrict wcs, size_t maxsize,
 const wchar_t * __restrict format, const struct tm * __restrict timeptr,
 locale_t locale)
{
 static const mbstate_t initial;
 mbstate_t mbs;
 char *dst, *sformat;
 const char *dstp;
 const wchar_t *formatp;
 size_t n, sflen;
 int sverrno;
 FIX_LOCALE(locale);

 sformat = dst = ((void*)0);





 mbs = initial;
 formatp = format;
 sflen = wcsrtombs_l(((void*)0), &formatp, 0, &mbs, locale);
 if (sflen == (size_t)-1)
  goto error;
 if ((sformat = malloc(sflen + 1)) == ((void*)0))
  goto error;
 mbs = initial;
 wcsrtombs_l(sformat, &formatp, sflen + 1, &mbs, locale);







 if (SIZE_T_MAX / MB_CUR_MAX <= maxsize) {

  errno = EINVAL;
  goto error;
 }
 if ((dst = malloc(maxsize * MB_CUR_MAX)) == ((void*)0))
  goto error;
 if (strftime_l(dst, maxsize, sformat, timeptr, locale) == 0)
  goto error;
 dstp = dst;
 mbs = initial;
 n = mbsrtowcs_l(wcs, &dstp, maxsize, &mbs, locale);
 if (n == (size_t)-2 || n == (size_t)-1 || dstp != ((void*)0))
  goto error;

 free(sformat);
 free(dst);
 return (n);

error:
 sverrno = errno;
 free(sformat);
 free(dst);
 errno = sverrno;
 return (0);
}
