
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_rule {scalar_t__ proto; } ;



int
skip_cmp_proto(struct pf_rule *a, struct pf_rule *b)
{
 return (a->proto != b->proto || a->proto == 0);
}
