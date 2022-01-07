
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {int uua_sublist_idx; int * uua_tx; TYPE_2__* uua_os; } ;
typedef TYPE_1__ userquota_updates_arg_t ;
struct TYPE_14__ {int os_synced_dnodes; } ;
typedef TYPE_2__ objset_t ;
typedef int dmu_tx_t ;
struct TYPE_15__ {int dp_sync_taskq; } ;
struct TYPE_12__ {scalar_t__ dn_type; } ;


 int DMU_GROUPUSED_OBJECT ;
 scalar_t__ DMU_OT_NONE ;
 int DMU_OT_USERGROUP_USED ;
 TYPE_10__* DMU_USERUSED_DNODE (TYPE_2__*) ;
 int DMU_USERUSED_OBJECT ;
 int KM_SLEEP ;
 int VERIFY0 (int ) ;
 TYPE_7__* dmu_objset_pool (TYPE_2__*) ;
 int dmu_objset_userused_enabled (TYPE_2__*) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int multilist_get_num_sublists (int ) ;
 scalar_t__ multilist_sublist_is_empty_idx (int ,int) ;
 int taskq_dispatch (int ,int ,TYPE_1__*,int ) ;
 int userquota_updates_task ;
 int zap_create_claim (TYPE_2__*,int ,int ,scalar_t__,int ,int *) ;

void
dmu_objset_do_userquota_updates(objset_t *os, dmu_tx_t *tx)
{
 int num_sublists;

 if (!dmu_objset_userused_enabled(os))
  return;


 if (DMU_USERUSED_DNODE(os)->dn_type == DMU_OT_NONE) {
  VERIFY0(zap_create_claim(os,
      DMU_USERUSED_OBJECT,
      DMU_OT_USERGROUP_USED, DMU_OT_NONE, 0, tx));
  VERIFY0(zap_create_claim(os,
      DMU_GROUPUSED_OBJECT,
      DMU_OT_USERGROUP_USED, DMU_OT_NONE, 0, tx));
 }

 num_sublists = multilist_get_num_sublists(os->os_synced_dnodes);
 for (int i = 0; i < num_sublists; i++) {
  if (multilist_sublist_is_empty_idx(os->os_synced_dnodes, i))
   continue;
  userquota_updates_arg_t *uua =
      kmem_alloc(sizeof (*uua), KM_SLEEP);
  uua->uua_os = os;
  uua->uua_sublist_idx = i;
  uua->uua_tx = tx;

  (void) taskq_dispatch(dmu_objset_pool(os)->dp_sync_taskq,
      userquota_updates_task, uua, 0);

 }
}
