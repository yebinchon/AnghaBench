
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pr_propname; } ;
typedef TYPE_1__ dsl_prop_record_t ;
struct TYPE_9__ {int dd_props; int dd_lock; } ;
typedef TYPE_2__ dsl_dir_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 TYPE_1__* list_head (int *) ;
 TYPE_1__* list_next (int *,TYPE_1__*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static dsl_prop_record_t *
dsl_prop_record_find(dsl_dir_t *dd, const char *propname)
{
 dsl_prop_record_t *pr = ((void*)0);

 ASSERT(MUTEX_HELD(&dd->dd_lock));

 for (pr = list_head(&dd->dd_props);
     pr != ((void*)0); pr = list_next(&dd->dd_props, pr)) {
  if (strcmp(pr->pr_propname, propname) == 0)
   break;
 }

 return (pr);
}
