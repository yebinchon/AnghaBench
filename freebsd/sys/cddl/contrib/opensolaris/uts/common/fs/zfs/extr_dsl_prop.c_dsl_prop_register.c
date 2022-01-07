
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_13__ {int pr_cbs; } ;
typedef TYPE_1__ dsl_prop_record_t ;
typedef int (* dsl_prop_changed_cb_t ) (void*,int ) ;
struct TYPE_14__ {void* cbr_arg; int (* cbr_func ) (void*,int ) ;TYPE_1__* cbr_pr; TYPE_4__* cbr_ds; } ;
typedef TYPE_2__ dsl_prop_cb_record_t ;
typedef int dsl_pool_t ;
struct TYPE_15__ {int dd_lock; int * dd_pool; } ;
typedef TYPE_3__ dsl_dir_t ;
struct TYPE_16__ {int ds_prop_cbs; TYPE_3__* ds_dir; } ;
typedef TYPE_4__ dsl_dataset_t ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int dsl_pool_config_held (int *) ;
 int dsl_prop_get_int_ds (TYPE_4__*,char const*,int *) ;
 TYPE_1__* dsl_prop_record_create (TYPE_3__*,char const*) ;
 TYPE_1__* dsl_prop_record_find (TYPE_3__*,char const*) ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int list_insert_head (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int stub1 (void*,int ) ;

int
dsl_prop_register(dsl_dataset_t *ds, const char *propname,
    dsl_prop_changed_cb_t *callback, void *cbarg)
{
 dsl_dir_t *dd = ds->ds_dir;
 dsl_pool_t *dp = dd->dd_pool;
 uint64_t value;
 dsl_prop_record_t *pr;
 dsl_prop_cb_record_t *cbr;
 int err;

 ASSERT(dsl_pool_config_held(dp));

 err = dsl_prop_get_int_ds(ds, propname, &value);
 if (err != 0)
  return (err);

 cbr = kmem_alloc(sizeof (dsl_prop_cb_record_t), KM_SLEEP);
 cbr->cbr_ds = ds;
 cbr->cbr_func = callback;
 cbr->cbr_arg = cbarg;

 mutex_enter(&dd->dd_lock);
 pr = dsl_prop_record_find(dd, propname);
 if (pr == ((void*)0))
  pr = dsl_prop_record_create(dd, propname);
 cbr->cbr_pr = pr;
 list_insert_head(&pr->pr_cbs, cbr);
 list_insert_head(&ds->ds_prop_cbs, cbr);
 mutex_exit(&dd->dd_lock);

 cbr->cbr_func(cbr->cbr_arg, value);
 return (0);
}
