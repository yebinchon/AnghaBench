
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int memset (char*,char,scalar_t__) ;
 int strlcat (char*,char const*,scalar_t__) ;
 int strlcpy (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

char *
line_fullname(char *dst, const char *src, u_int dstsize)
{
 memset(dst, '\0', dstsize);
 if ((strncmp(src, "/dev/", 5) == 0) || (dstsize < (strlen(src) + 5)))
  strlcpy(dst, src, dstsize);
 else {
  strlcpy(dst, "/dev/", dstsize);
  strlcat(dst, src, dstsize);
 }
 return (dst);
}
