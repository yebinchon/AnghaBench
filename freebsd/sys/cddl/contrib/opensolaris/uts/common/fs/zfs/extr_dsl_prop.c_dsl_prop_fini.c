
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pr_propname; int pr_cbs; } ;
typedef TYPE_1__ dsl_prop_record_t ;
struct TYPE_7__ {int dd_props; } ;
typedef TYPE_2__ dsl_dir_t ;


 int kmem_free (TYPE_1__*,int) ;
 int list_destroy (int *) ;
 TYPE_1__* list_remove_head (int *) ;
 int strfree (char*) ;

void
dsl_prop_fini(dsl_dir_t *dd)
{
 dsl_prop_record_t *pr;

 while ((pr = list_remove_head(&dd->dd_props)) != ((void*)0)) {
  list_destroy(&pr->pr_cbs);
  strfree((char *)pr->pr_propname);
  kmem_free(pr, sizeof (dsl_prop_record_t));
 }
 list_destroy(&dd->dd_props);
}
