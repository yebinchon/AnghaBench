
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_neg_data {int labs; int name; } ;


 int dname_canon_lab_cmp (int ,int ,int ,int ,int*) ;

int val_neg_data_compare(const void* a, const void* b)
{
 struct val_neg_data* x = (struct val_neg_data*)a;
 struct val_neg_data* y = (struct val_neg_data*)b;
 int m;
 return dname_canon_lab_cmp(x->name, x->labs, y->name, y->labs, &m);
}
