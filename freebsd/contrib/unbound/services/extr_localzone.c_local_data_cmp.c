
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_data {int namelabs; int name; } ;


 int dname_canon_lab_cmp (int ,int ,int ,int ,int*) ;

int
local_data_cmp(const void* d1, const void* d2)
{
 struct local_data* a = (struct local_data*)d1;
 struct local_data* b = (struct local_data*)d2;
 int m;
 return dname_canon_lab_cmp(a->name, a->namelabs, b->name,
  b->namelabs, &m);
}
