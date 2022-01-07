
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {void* cbr_arg; TYPE_1__* cbr_pr; } ;
typedef TYPE_2__ dsl_prop_cb_record_t ;
struct TYPE_13__ {int dd_lock; } ;
typedef TYPE_3__ dsl_dir_t ;
struct TYPE_14__ {int ds_prop_cbs; TYPE_3__* ds_dir; } ;
typedef TYPE_4__ dsl_dataset_t ;
struct TYPE_11__ {int pr_cbs; } ;


 int kmem_free (TYPE_2__*,int) ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 int list_remove (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_prop_unregister_all(dsl_dataset_t *ds, void *cbarg)
{
 dsl_prop_cb_record_t *cbr, *next_cbr;

 dsl_dir_t *dd = ds->ds_dir;

 mutex_enter(&dd->dd_lock);
 next_cbr = list_head(&ds->ds_prop_cbs);
 while (next_cbr != ((void*)0)) {
  cbr = next_cbr;
  next_cbr = list_next(&ds->ds_prop_cbs, cbr);
  if (cbr->cbr_arg == cbarg) {
   list_remove(&ds->ds_prop_cbs, cbr);
   list_remove(&cbr->cbr_pr->pr_cbs, cbr);
   kmem_free(cbr, sizeof (dsl_prop_cb_record_t));
  }
 }
 mutex_exit(&dd->dd_lock);
}
