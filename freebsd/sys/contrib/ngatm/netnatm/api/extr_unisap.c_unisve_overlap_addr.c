
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unisve_addr {scalar_t__ type; scalar_t__ plan; scalar_t__ len; int addr; } ;


 int COMMON_OVERLAP (struct unisve_addr const*,struct unisve_addr const*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int
unisve_overlap_addr(const struct unisve_addr *s1, const struct unisve_addr *s2)
{
 COMMON_OVERLAP(s1, s2);

 return (s1->type == s2->type && s1->plan == s2->plan &&
     s1->len == s2->len && memcmp(s1->addr, s2->addr, s1->len) == 0);
}
