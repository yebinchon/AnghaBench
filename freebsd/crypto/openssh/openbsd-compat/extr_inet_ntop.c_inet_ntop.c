
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;




 int EAFNOSUPPORT ;
 int errno ;
 char const* inet_ntop4 (void const*,char*,size_t) ;
 char const* inet_ntop6 (void const*,char*,size_t) ;

const char *
inet_ntop(int af, const void *src, char *dst, socklen_t size)
{
 switch (af) {
 case 129:
  return (inet_ntop4(src, dst, (size_t)size));
 case 128:
  return (inet_ntop6(src, dst, (size_t)size));
 default:
  errno = EAFNOSUPPORT;
  return (((void*)0));
 }

}
