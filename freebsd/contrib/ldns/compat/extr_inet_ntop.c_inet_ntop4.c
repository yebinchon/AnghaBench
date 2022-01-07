
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ENOSPC ;
 int errno ;
 int snprintf (char*,size_t,char const*,int const,int const,int const,int const) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static const char *
inet_ntop4(const u_char *src, char *dst, size_t size)
{
 static const char fmt[] = "%u.%u.%u.%u";
 char tmp[sizeof "255.255.255.255"];
 int l;

 l = snprintf(tmp, size, fmt, src[0], src[1], src[2], src[3]);
 if (l <= 0 || l >= (int)size) {
  errno = ENOSPC;
  return (((void*)0));
 }
 strlcpy(dst, tmp, size);
 return (dst);
}
