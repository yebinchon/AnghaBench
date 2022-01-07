
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p_event_wheel; } ;
struct TYPE_10__ {void* is_closing; TYPE_3__ txn_mgr; TYPE_1__* p_vendor; } ;
typedef TYPE_4__ osmv_bind_obj_t ;
typedef int osm_log_t ;
typedef scalar_t__ osm_bind_handle_t ;
struct TYPE_8__ {void* closing; } ;
struct TYPE_7__ {int * p_log; } ;


 int OSM_LOG_DEBUG ;
 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_EXIT (int *) ;
 void* TRUE ;
 int osm_log (int *,int ,char*) ;
 int osmv_transport_done (scalar_t__) ;
 int osmv_txn_abort_rmpp_txns (scalar_t__) ;
 int osmv_txn_lock (TYPE_4__*) ;
 int osmv_txn_unlock (TYPE_4__*) ;
 int osmv_txnmgr_done (scalar_t__) ;

__attribute__((used)) static void __osm_vendor_internal_unbind(osm_bind_handle_t h_bind)
{
 osmv_bind_obj_t *p_bo = (osmv_bind_obj_t *) h_bind;
 osm_log_t *p_log = p_bo->p_vendor->p_log;

 OSM_LOG_ENTER(p_log);


 p_bo->txn_mgr.p_event_wheel->closing = TRUE;

 osmv_txn_lock(p_bo);





 p_bo->is_closing = TRUE;


 osmv_txn_abort_rmpp_txns(h_bind);


 osmv_txn_unlock(p_bo);
 osm_log(p_log, OSM_LOG_DEBUG,
  "__osm_vendor_internal_unbind: destroying transport mgr.. \n");

 osmv_transport_done(h_bind);


 osmv_txn_lock(p_bo);
 osm_log(p_log, OSM_LOG_DEBUG,
  "__osm_vendor_internal_unbind: destroying txn mgr.. \n");
 osmv_txnmgr_done(h_bind);
 osm_log(p_log, OSM_LOG_DEBUG,
  "__osm_vendor_internal_unbind: destroying bind lock.. \n");
 osmv_txn_unlock(p_bo);
 OSM_LOG_EXIT(p_log);
}
