
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_data {int namelabs; int name; } ;


 int dname_canon_lab_cmp (int ,int ,int ,int ,int*) ;

int auth_data_cmp(const void* z1, const void* z2)
{
 struct auth_data* a = (struct auth_data*)z1;
 struct auth_data* b = (struct auth_data*)z2;
 int m;

 return dname_canon_lab_cmp(a->name, a->namelabs, b->name,
  b->namelabs, &m);
}
