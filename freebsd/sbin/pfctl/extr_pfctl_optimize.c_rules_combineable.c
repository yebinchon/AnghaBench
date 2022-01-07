
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_rule {int dummy; } ;
typedef int a ;


 int COMBINED ;
 int comparable_rule (struct pf_rule*,struct pf_rule*,int ) ;
 scalar_t__ memcmp (struct pf_rule*,struct pf_rule*,int) ;

int
rules_combineable(struct pf_rule *p1, struct pf_rule *p2)
{
 struct pf_rule a, b;

 comparable_rule(&a, p1, COMBINED);
 comparable_rule(&b, p2, COMBINED);
 return (memcmp(&a, &b, sizeof(a)) == 0);
}
