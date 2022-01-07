
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 scalar_t__ le16dec (int const*) ;
 int le32dec (int const*) ;

uint64_t
le48dec(const void *pp)
{
 uint8_t const *p = (uint8_t const *)pp;

 return (((uint64_t)le16dec(p + 4) << 32) | le32dec(p));
}
