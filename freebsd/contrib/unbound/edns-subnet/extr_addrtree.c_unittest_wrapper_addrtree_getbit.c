
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addrlen_t ;
typedef int addrkey_t ;


 int getbit (int const*,int ,int ) ;

int unittest_wrapper_addrtree_getbit(const addrkey_t *addr,
 addrlen_t addrlen, addrlen_t n) {
 return getbit(addr, addrlen, n);
}
