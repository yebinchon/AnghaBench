
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_sap {int bhli; int blli_id3; int blli_id2; int selector; int addr; } ;


 int unisve_is_catchall (struct uni_sap const*) ;
 scalar_t__ unisve_overlap_addr (int *,int *) ;
 scalar_t__ unisve_overlap_bhli (int *,int *) ;
 scalar_t__ unisve_overlap_blli_id2 (int *,int *) ;
 scalar_t__ unisve_overlap_blli_id3 (int *,int *) ;
 scalar_t__ unisve_overlap_selector (int *,int *) ;

int
unisve_overlap_sap(const struct uni_sap *s1, const struct uni_sap *s2)
{
 int any1, any2;





 any1 = unisve_is_catchall(s1);
 any2 = unisve_is_catchall(s2);

 if (any1 && any2)
  return (1);
  if(any1 || any2)
  return (0);

 return (unisve_overlap_addr(&s1->addr, &s2->addr) &&
     unisve_overlap_selector(&s1->selector, &s2->selector) &&
     unisve_overlap_blli_id2(&s1->blli_id2, &s2->blli_id2) &&
     unisve_overlap_blli_id3(&s1->blli_id3, &s2->blli_id3) &&
     unisve_overlap_bhli(&s1->bhli, &s2->bhli));
}
