
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_rule {scalar_t__ af; } ;



int
skip_cmp_af(struct pf_rule *a, struct pf_rule *b)
{
 if (a->af != b->af || a->af == 0)
  return (1);
 return (0);
}
