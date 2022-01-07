
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addrlen_t ;
typedef int addrkey_t ;


 int bits_common (int const*,int ,int const*,int ,int ) ;

addrlen_t unittest_wrapper_addrtree_bits_common(const addrkey_t *s1,
 addrlen_t l1, const addrkey_t *s2, addrlen_t l2, addrlen_t skip) {
 return bits_common(s1, l1, s2, l2, skip);
}
