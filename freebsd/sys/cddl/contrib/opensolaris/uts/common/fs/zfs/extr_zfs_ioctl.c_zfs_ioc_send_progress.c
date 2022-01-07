
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zc_cookie; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int dsl_pool_t ;
struct TYPE_11__ {int ds_sendstream_lock; int ds_sendstreams; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_12__ {scalar_t__ dsa_proc; int * dsa_off; int dsa_outfd; } ;
typedef TYPE_3__ dmu_sendarg_t ;


 int ENOENT ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ curproc ;
 int dsl_dataset_hold (int *,int ,int ,TYPE_2__**) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 int dsl_pool_hold (int ,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 TYPE_3__* list_head (int *) ;
 TYPE_3__* list_next (int *,TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static int
zfs_ioc_send_progress(zfs_cmd_t *zc)
{
 dsl_pool_t *dp;
 dsl_dataset_t *ds;
 dmu_sendarg_t *dsp = ((void*)0);
 int error;

 error = dsl_pool_hold(zc->zc_name, FTAG, &dp);
 if (error != 0)
  return (error);

 error = dsl_dataset_hold(dp, zc->zc_name, FTAG, &ds);
 if (error != 0) {
  dsl_pool_rele(dp, FTAG);
  return (error);
 }

 mutex_enter(&ds->ds_sendstream_lock);







 for (dsp = list_head(&ds->ds_sendstreams); dsp != ((void*)0);
     dsp = list_next(&ds->ds_sendstreams, dsp)) {
  if (dsp->dsa_outfd == zc->zc_cookie &&
      dsp->dsa_proc == curproc)
   break;
 }

 if (dsp != ((void*)0))
  zc->zc_cookie = *(dsp->dsa_off);
 else
  error = SET_ERROR(ENOENT);

 mutex_exit(&ds->ds_sendstream_lock);
 dsl_dataset_rele(ds, FTAG);
 dsl_pool_rele(dp, FTAG);
 return (error);
}
