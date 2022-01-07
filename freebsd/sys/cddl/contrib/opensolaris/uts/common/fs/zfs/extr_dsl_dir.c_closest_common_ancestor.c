
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* dd_parent; } ;
typedef TYPE_1__ dsl_dir_t ;



__attribute__((used)) static dsl_dir_t *
closest_common_ancestor(dsl_dir_t *ds1, dsl_dir_t *ds2)
{
 for (; ds1; ds1 = ds1->dd_parent) {
  dsl_dir_t *dd;
  for (dd = ds2; dd; dd = dd->dd_parent) {
   if (ds1 == dd)
    return (dd);
  }
 }
 return (((void*)0));
}
