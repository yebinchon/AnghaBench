
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust_anchor {scalar_t__ dclass; int namelabs; int name; } ;


 int dname_lab_cmp (int ,int ,int ,int ,int*) ;

int
anchor_cmp(const void* k1, const void* k2)
{
 int m;
 struct trust_anchor* n1 = (struct trust_anchor*)k1;
 struct trust_anchor* n2 = (struct trust_anchor*)k2;

 if(n1->dclass != n2->dclass) {
  if(n1->dclass < n2->dclass)
   return -1;
  return 1;
 }
 return dname_lab_cmp(n1->name, n1->namelabs, n2->name, n2->namelabs,
  &m);
}
