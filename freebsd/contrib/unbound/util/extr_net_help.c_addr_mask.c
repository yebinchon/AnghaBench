
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
typedef int socklen_t ;


 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,int ) ;

void
addr_mask(struct sockaddr_storage* addr, socklen_t len, int net)
{
 uint8_t mask[8] = {0x0, 0x80, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc, 0xfe};
 int i, max;
 uint8_t* s;
 if(addr_is_ip6(addr, len)) {
  s = (uint8_t*)&((struct sockaddr_in6*)addr)->sin6_addr;
  max = 128;
 } else {
  s = (uint8_t*)&((struct sockaddr_in*)addr)->sin_addr;
  max = 32;
 }
 if(net >= max)
  return;
 for(i=net/8+1; i<max/8; i++) {
  s[i] = 0;
 }
 s[net/8] &= mask[net&0x7];
}
