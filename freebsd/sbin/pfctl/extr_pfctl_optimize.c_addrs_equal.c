
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_rule_addr {scalar_t__ neg; int addr; } ;


 scalar_t__ memcmp (int *,int *,int) ;

int
addrs_equal(struct pf_rule_addr *a, struct pf_rule_addr *b)
{
 if (a->neg != b->neg)
  return (0);
 return (memcmp(&a->addr, &b->addr, sizeof(a->addr)) == 0);
}
