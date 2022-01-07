
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,char,int) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strncpy (char*,char const*,size_t) ;

char *
line_abbrevname(char *dst, const char *src, int dstsize)
{
 size_t len;

 memset(dst, '\0', dstsize);


 if (strncmp(src, "/dev/", 5) == 0)
  src += 5;






 len = strlen(src);

 if (len > 0) {
  if (((int)len - dstsize) > 0)
   src += ((int)len - dstsize);


  strncpy(dst, src, (size_t)dstsize);
 }

 return (dst);
}
