
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addrlen_t ;
typedef int addrkey_t ;


 int cmpbit (int const*,int const*,int ) ;

int unittest_wrapper_addrtree_cmpbit(const addrkey_t *key1,
 const addrkey_t *key2, addrlen_t n) {
 return cmpbit(key1, key2, n);
}
