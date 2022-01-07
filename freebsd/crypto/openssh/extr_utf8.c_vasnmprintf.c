
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int va_list ;


 size_t INT_MAX ;
 int MB_CUR_MAX ;
 int VIS_ALL ;
 int VIS_OCTAL ;
 scalar_t__ dangerous_locale () ;
 int free (char*) ;
 int grow_dst (char**,size_t*,size_t,char**,int) ;
 char* malloc (size_t) ;
 int mbtowc (int*,char*,int ) ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;
 int vasprintf (char**,char const*,int ) ;
 char* vis (char*,char,int,int ) ;
 int wcwidth (int) ;

__attribute__((used)) static int
vasnmprintf(char **str, size_t maxsz, int *wp, const char *fmt, va_list ap)
{
 char *src;
 char *sp;
 char *dst;
 char *dp;
 char *tp;
 size_t sz;
 wchar_t wc;
 int len;
 int ret;
 int width;
 int total_width, max_width, print;

 src = ((void*)0);
 if ((ret = vasprintf(&src, fmt, ap)) <= 0)
  goto fail;

 sz = strlen(src) + 1;
 if ((dst = malloc(sz)) == ((void*)0)) {
  free(src);
  ret = -1;
  goto fail;
 }

 if (maxsz > INT_MAX)
  maxsz = INT_MAX;

 sp = src;
 dp = dst;
 ret = 0;
 print = 1;
 total_width = 0;
 max_width = wp == ((void*)0) ? INT_MAX : *wp;
 while (*sp != '\0') {
  if ((len = mbtowc(&wc, sp, MB_CUR_MAX)) == -1) {
   (void)mbtowc(((void*)0), ((void*)0), MB_CUR_MAX);
   if (dangerous_locale()) {
    ret = -1;
    break;
   }
   len = 1;
   width = -1;
  } else if (wp == ((void*)0) &&
      (wc == L'\n' || wc == L'\r' || wc == L'\t')) {





   width = 0;
  } else if ((width = wcwidth(wc)) == -1 &&
      dangerous_locale()) {
   ret = -1;
   break;
  }



  if (width >= 0) {
   if (print && (dp - dst >= (int)maxsz - len ||
       total_width > max_width - width))
    print = 0;
   if (print) {
    if (grow_dst(&dst, &sz, maxsz,
        &dp, len) == -1) {
     ret = -1;
     break;
    }
    total_width += width;
    memcpy(dp, sp, len);
    dp += len;
   }
   sp += len;
   if (ret >= 0)
    ret += len;
   continue;
  }



  while (len > 0) {
   if (print && (dp - dst >= (int)maxsz - 4 ||
       total_width > max_width - 4))
    print = 0;
   if (print) {
    if (grow_dst(&dst, &sz, maxsz,
        &dp, 4) == -1) {
     ret = -1;
     break;
    }
    tp = vis(dp, *sp, VIS_OCTAL | VIS_ALL, 0);
    width = tp - dp;
    total_width += width;
    dp = tp;
   } else
    width = 4;
   len--;
   sp++;
   if (ret >= 0)
    ret += width;
  }
  if (len > 0)
   break;
 }
 free(src);
 *dp = '\0';
 *str = dst;
 if (wp != ((void*)0))
  *wp = total_width;
 if (ret < (int)maxsz && !print)
  ret = -1;
 return ret;

fail:
 if (wp != ((void*)0))
  *wp = 0;
 if (ret == 0) {
  *str = src;
  return 0;
 } else {
  *str = ((void*)0);
  return -1;
 }
}
