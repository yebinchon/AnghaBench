
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_rule {scalar_t__ direction; } ;



int
skip_cmp_dir(struct pf_rule *a, struct pf_rule *b)
{
 if (a->direction == 0 || a->direction != b->direction)
  return (1);
 return (0);
}
