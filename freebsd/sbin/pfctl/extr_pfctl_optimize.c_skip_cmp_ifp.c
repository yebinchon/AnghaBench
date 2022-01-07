
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_rule {char* ifname; scalar_t__ ifnot; } ;


 scalar_t__ strcmp (char*,char*) ;

int
skip_cmp_ifp(struct pf_rule *a, struct pf_rule *b)
{
 if (strcmp(a->ifname, b->ifname) || a->ifname[0] == '\0')
  return (1);
 return (a->ifnot != b->ifnot);
}
