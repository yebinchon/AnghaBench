
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAFNOSUPPORT ;
 int errno ;
 int inet_cidr_pton_ipv4 (char const*,void*,int*,int ) ;
 int inet_cidr_pton_ipv6 (char const*,void*,int*) ;

int
inet_cidr_pton(int af, const char *src, void *dst, int *bits) {
 switch (af) {
 case 129:
  return (inet_cidr_pton_ipv4(src, dst, bits, 0));
 case 128:
  return (inet_cidr_pton_ipv6(src, dst, bits));
 default:
  errno = EAFNOSUPPORT;
  return (-1);
 }
}
