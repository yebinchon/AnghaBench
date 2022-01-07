
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ addrlen_t ;
typedef int addrkey_t ;


 scalar_t__ bits_common (int const*,scalar_t__,int const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
issub(const addrkey_t *s1, addrlen_t l1,
 const addrkey_t *s2, addrlen_t l2, addrlen_t skip)
{
 return bits_common(s1, l1, s2, l2, skip) == l1;
}
