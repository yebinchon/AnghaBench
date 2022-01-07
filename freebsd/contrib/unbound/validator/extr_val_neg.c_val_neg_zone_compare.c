
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_neg_zone {scalar_t__ dclass; int labs; int name; } ;


 int dname_canon_lab_cmp (int ,int ,int ,int ,int*) ;

int val_neg_zone_compare(const void* a, const void* b)
{
 struct val_neg_zone* x = (struct val_neg_zone*)a;
 struct val_neg_zone* y = (struct val_neg_zone*)b;
 int m;
 if(x->dclass != y->dclass) {
  if(x->dclass < y->dclass)
   return -1;
  return 1;
 }
 return dname_canon_lab_cmp(x->name, x->labs, y->name, y->labs, &m);
}
