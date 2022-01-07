
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ svn_prop_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
propchange_sort(const void *k1, const void *k2)
{
  const svn_prop_t *propchange1 = k1;
  const svn_prop_t *propchange2 = k2;

  return strcmp(propchange1->name, propchange2->name);
}
