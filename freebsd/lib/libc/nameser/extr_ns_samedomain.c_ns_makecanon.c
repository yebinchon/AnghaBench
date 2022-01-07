
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSGSIZE ;
 int errno ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

int
ns_makecanon(const char *src, char *dst, size_t dstsize) {
 size_t n = strlen(src);

 if (n + sizeof "." > dstsize) {
  errno = EMSGSIZE;
  return (-1);
 }
 strcpy(dst, src);
 while (n >= 1U && dst[n - 1] == '.')
  if (n >= 2U && dst[n - 2] == '\\' &&
      (n < 3U || dst[n - 3] != '\\'))
   break;
  else
   dst[--n] = '\0';
 dst[n++] = '.';
 dst[n] = '\0';
 return (0);
}
