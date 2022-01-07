
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_16__ {int p_log; int p_subn; } ;
typedef TYPE_3__ osm_sm_t ;
struct TYPE_14__ {int guid; } ;
struct TYPE_17__ {TYPE_1__ smi; } ;
typedef TYPE_4__ osm_remote_sm_t ;
struct TYPE_18__ {TYPE_10__* p_physp; } ;
typedef TYPE_5__ osm_port_t ;
struct TYPE_15__ {int light_sweep; int set_method; int port_guid; } ;
struct TYPE_19__ {TYPE_2__ smi_context; } ;
typedef TYPE_6__ osm_madw_context_t ;
typedef scalar_t__ ib_api_status_t ;
typedef int cl_map_item_t ;
struct TYPE_13__ {int port_info; } ;


 int CL_DISP_MSGID_NONE ;
 int FALSE ;
 int IB_MAD_ATTR_SM_INFO ;
 scalar_t__ IB_SUCCESS ;
 int OSM_LOG (int ,int ,char*,...) ;
 int OSM_LOG_ERROR ;
 int TRUE ;
 TYPE_4__* cl_item_obj (int *,int ,int ) ;
 int ib_get_err_str (scalar_t__) ;
 int ib_port_info_get_m_key (int *) ;
 int map_item ;
 TYPE_5__* osm_get_port_by_guid (int ,int ) ;
 int osm_physp_get_dr_path_ptr (TYPE_10__*) ;
 scalar_t__ osm_req_get (TYPE_3__*,int ,int ,int ,int ,int ,int ,TYPE_6__*) ;
 TYPE_4__* r_sm ;

__attribute__((used)) static void query_sm_info(cl_map_item_t * item, void *cxt)
{
 osm_madw_context_t context;
 osm_remote_sm_t *r_sm = cl_item_obj(item, r_sm, map_item);
 osm_sm_t *sm = cxt;
 ib_api_status_t ret;
 osm_port_t *p_port;

 p_port= osm_get_port_by_guid(sm->p_subn, r_sm->smi.guid);
 if (p_port == ((void*)0)) {
  OSM_LOG(sm->p_log, OSM_LOG_ERROR, "ERR 3340: "
   "No port object on given sm object\n");
  return;
        }

 context.smi_context.port_guid = r_sm->smi.guid;
 context.smi_context.set_method = FALSE;
 context.smi_context.light_sweep = TRUE;

 ret = osm_req_get(sm, osm_physp_get_dr_path_ptr(p_port->p_physp),
     IB_MAD_ATTR_SM_INFO, 0, FALSE,
     ib_port_info_get_m_key(&p_port->p_physp->port_info),
     CL_DISP_MSGID_NONE, &context);
 if (ret != IB_SUCCESS)
  OSM_LOG(sm->p_log, OSM_LOG_ERROR, "ERR 3314: "
   "Failure requesting SMInfo (%s)\n",
   ib_get_err_str(ret));
}
