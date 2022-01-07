
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_entry_key {scalar_t__ key_class; int name; } ;


 int query_dname_compare (int ,int ) ;

int
key_entry_compfunc(void* k1, void* k2)
{
 struct key_entry_key* n1 = (struct key_entry_key*)k1;
 struct key_entry_key* n2 = (struct key_entry_key*)k2;
 if(n1->key_class != n2->key_class) {
  if(n1->key_class < n2->key_class)
   return -1;
  return 1;
 }
 return query_dname_compare(n1->name, n2->name);
}
