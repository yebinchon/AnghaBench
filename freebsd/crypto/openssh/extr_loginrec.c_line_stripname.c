
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,char,int) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

char *
line_stripname(char *dst, const char *src, int dstsize)
{
 memset(dst, '\0', dstsize);
 if (strncmp(src, "/dev/", 5) == 0)
  strlcpy(dst, src + 5, dstsize);
 else
  strlcpy(dst, src, dstsize);
 return (dst);
}
