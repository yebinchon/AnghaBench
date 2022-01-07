
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int (* sa_update_cb ) (TYPE_3__*,int *) ;scalar_t__ sa_need_attr_registration; } ;
typedef TYPE_2__ sa_os_t ;
struct TYPE_13__ {int sa_lock; TYPE_1__* sa_os; } ;
typedef TYPE_3__ sa_handle_t ;
typedef int sa_bulk_attr_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;
struct TYPE_11__ {TYPE_2__* os_sa; } ;


 int ASSERT (TYPE_3__*) ;
 int IS_SA_BONUSTYPE (int ) ;
 TYPE_3__* MUTEX_HELD (int *) ;
 int SA_BONUS ;
 int SA_BONUSTYPE_FROM_DB (int ) ;
 int SA_GET_DB (TYPE_3__*,int ) ;
 int SA_UPDATE ;
 int sa_attr_op (TYPE_3__*,int *,int,int ,int *) ;
 int sa_attr_register_sync (TYPE_3__*,int *) ;
 int stub1 (TYPE_3__*,int *) ;

__attribute__((used)) static int
sa_bulk_update_impl(sa_handle_t *hdl, sa_bulk_attr_t *bulk, int count,
    dmu_tx_t *tx)
{
 int error;
 sa_os_t *sa = hdl->sa_os->os_sa;
 dmu_object_type_t bonustype;

 bonustype = SA_BONUSTYPE_FROM_DB(SA_GET_DB(hdl, SA_BONUS));

 ASSERT(hdl);
 ASSERT(MUTEX_HELD(&hdl->sa_lock));


 if (sa->sa_need_attr_registration)
  sa_attr_register_sync(hdl, tx);

 error = sa_attr_op(hdl, bulk, count, SA_UPDATE, tx);
 if (error == 0 && !IS_SA_BONUSTYPE(bonustype) && sa->sa_update_cb)
  sa->sa_update_cb(hdl, tx);

 return (error);
}
