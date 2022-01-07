
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int dsl_pool_t ;
typedef int dsl_dir_t ;
struct TYPE_7__ {scalar_t__* ds_snapname; int ds_lock; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_8__ {scalar_t__ dd_head_dataset_obj; } ;


 int ASSERT (int ) ;
 int ENOENT ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int dprintf (char*,char const*) ;
 int dsl_dataset_hold_obj (int *,scalar_t__,void*,TYPE_1__**) ;
 int dsl_dataset_rele (TYPE_1__*,void*) ;
 int dsl_dataset_snap_lookup (TYPE_1__*,char const*,scalar_t__*) ;
 int dsl_dir_hold (int *,char const*,int ,int **,char const**) ;
 TYPE_2__* dsl_dir_phys (int *) ;
 int dsl_dir_rele (int *,int ) ;
 int dsl_pool_config_held (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int strlcpy (scalar_t__*,char const*,int) ;

int
dsl_dataset_hold(dsl_pool_t *dp, const char *name,
    void *tag, dsl_dataset_t **dsp)
{
 dsl_dir_t *dd;
 const char *snapname;
 uint64_t obj;
 int err = 0;
 dsl_dataset_t *ds;

 err = dsl_dir_hold(dp, name, FTAG, &dd, &snapname);
 if (err != 0)
  return (err);

 ASSERT(dsl_pool_config_held(dp));
 obj = dsl_dir_phys(dd)->dd_head_dataset_obj;
 if (obj != 0)
  err = dsl_dataset_hold_obj(dp, obj, tag, &ds);
 else
  err = SET_ERROR(ENOENT);


 if (err == 0 && snapname != ((void*)0)) {
  dsl_dataset_t *snap_ds;

  if (*snapname++ != '@') {
   dsl_dataset_rele(ds, tag);
   dsl_dir_rele(dd, FTAG);
   return (SET_ERROR(ENOENT));
  }

  dprintf("looking for snapshot '%s'\n", snapname);
  err = dsl_dataset_snap_lookup(ds, snapname, &obj);
  if (err == 0)
   err = dsl_dataset_hold_obj(dp, obj, tag, &snap_ds);
  dsl_dataset_rele(ds, tag);

  if (err == 0) {
   mutex_enter(&snap_ds->ds_lock);
   if (snap_ds->ds_snapname[0] == 0)
    (void) strlcpy(snap_ds->ds_snapname, snapname,
        sizeof (snap_ds->ds_snapname));
   mutex_exit(&snap_ds->ds_lock);
   ds = snap_ds;
  }
 }
 if (err == 0)
  *dsp = ds;
 dsl_dir_rele(dd, FTAG);
 return (err);
}
