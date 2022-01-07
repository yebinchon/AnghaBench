
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAFNOSUPPORT ;
 int errno ;
 int inet_net_pton_ipv4 (char const*,void*,size_t) ;
 int inet_net_pton_ipv6 (char const*,void*,size_t) ;

int
inet_net_pton(int af, const char *src, void *dst, size_t size) {
 switch (af) {
 case 129:
  return (inet_net_pton_ipv4(src, dst, size));
 case 128:
  return (inet_net_pton_ipv6(src, dst, size));
 default:
  errno = EAFNOSUPPORT;
  return (-1);
 }
}
