
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addrlen_t ;
typedef int addrkey_t ;


 int issub (int const*,int ,int const*,int ,int ) ;

int unittest_wrapper_addrtree_issub(const addrkey_t *s1, addrlen_t l1,
 const addrkey_t *s2, addrlen_t l2, addrlen_t skip) {
 return issub(s1, l1, s2, l2, skip);
}
