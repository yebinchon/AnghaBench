
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_zone {scalar_t__ dclass; int namelabs; int name; } ;


 int dname_lab_cmp (int ,int ,int ,int ,int*) ;

int auth_zone_cmp(const void* z1, const void* z2)
{


 struct auth_zone* a = (struct auth_zone*)z1;
 struct auth_zone* b = (struct auth_zone*)z2;
 int m;
 if(a->dclass != b->dclass) {
  if(a->dclass < b->dclass)
   return -1;
  return 1;
 }


 return dname_lab_cmp(a->name, a->namelabs, b->name, b->namelabs, &m);
}
