
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int EOPNOTSUPP ;
 int errno ;

int
mbtowc(wchar_t *pwc, const char *s, size_t n)
{
 if (s == ((void*)0) || *s == '\0')
  return 0;
 if (*s < 0 || *s > 0x7f || n < 1) {
  errno = EOPNOTSUPP;
  return -1;
 }
 if (pwc != ((void*)0))
  *pwc = *s;
 return 1;
}
