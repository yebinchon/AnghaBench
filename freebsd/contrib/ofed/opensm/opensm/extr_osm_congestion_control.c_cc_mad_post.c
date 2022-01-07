
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_25__ {int cc_key; } ;
typedef TYPE_8__ osm_subn_opt_t ;
typedef int osm_physp_t ;
typedef int osm_node_t ;
struct TYPE_23__ {void* attr_mod; void* mad_method; int port; int port_guid; int node_guid; } ;
struct TYPE_24__ {TYPE_6__ cc_context; } ;
struct TYPE_20__ {int remote_qkey; int remote_qp; } ;
struct TYPE_21__ {TYPE_3__ gsi; } ;
struct TYPE_22__ {TYPE_4__ addr_type; int dest_lid; } ;
struct TYPE_26__ {int list_item; TYPE_7__ context; int fail_msg; int resp_expected; TYPE_5__ mad_addr; } ;
typedef TYPE_9__ osm_madw_t ;
struct TYPE_16__ {int log; int cc_poller_wakeup; int mad_queue_lock; int mad_queue; int outstanding_mads; int trans_id; TYPE_1__* subn; } ;
typedef TYPE_10__ osm_congestion_control_t ;
typedef void* ib_net32_t ;
typedef int ib_net16_t ;
struct TYPE_19__ {int base_ver; int class_ver; scalar_t__ trans_id; void* attr_mod; scalar_t__ resv; int attr_id; scalar_t__ class_spec; scalar_t__ status; void* method; int mgmt_class; } ;
struct TYPE_17__ {int log_data; int cc_key; TYPE_2__ header; } ;
typedef TYPE_11__ ib_cc_mad_t ;
struct TYPE_18__ {TYPE_8__ opt; } ;


 int CL_DISP_MSGID_NONE ;
 int IB_CC_LOG_DATA_SIZE ;
 void* IB_MAD_METHOD_SET ;
 int IB_MCLASS_CC ;
 int IB_QP1 ;
 int IB_QP1_WELL_KNOWN_Q_KEY ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_EXIT (int ) ;
 int TRUE ;
 scalar_t__ cl_atomic_inc (int *) ;
 int cl_event_signal (int *) ;
 int cl_hton32 (int ) ;
 void* cl_hton64 (int) ;
 int cl_qlist_insert_tail (int *,int *) ;
 int cl_spinlock_acquire (int *) ;
 int cl_spinlock_release (int *) ;
 int memset (int ,char,int ) ;
 TYPE_11__* osm_madw_get_cc_mad_ptr (TYPE_9__*) ;
 int osm_node_get_base_lid (int *,int ) ;
 int osm_node_get_node_guid (int *) ;
 int osm_physp_get_port_guid (int *) ;
 int osm_physp_get_port_num (int *) ;

__attribute__((used)) static void cc_mad_post(osm_congestion_control_t *p_cc,
   osm_madw_t *p_madw,
   osm_node_t *p_node,
   osm_physp_t *p_physp,
   ib_net16_t attr_id,
   ib_net32_t attr_mod)
{
 osm_subn_opt_t *p_opt = &p_cc->subn->opt;
 ib_cc_mad_t *p_cc_mad;
 uint8_t port;

 OSM_LOG_ENTER(p_cc->log);

 port = osm_physp_get_port_num(p_physp);

 p_cc_mad = osm_madw_get_cc_mad_ptr(p_madw);

 p_cc_mad->header.base_ver = 1;
 p_cc_mad->header.mgmt_class = IB_MCLASS_CC;
 p_cc_mad->header.class_ver = 2;
 p_cc_mad->header.method = IB_MAD_METHOD_SET;
 p_cc_mad->header.status = 0;
 p_cc_mad->header.class_spec = 0;
 p_cc_mad->header.trans_id =
  cl_hton64((uint64_t) cl_atomic_inc(&p_cc->trans_id) &
     (uint64_t) (0xFFFFFFFF));
 if (p_cc_mad->header.trans_id == 0)
  p_cc_mad->header.trans_id =
   cl_hton64((uint64_t) cl_atomic_inc(&p_cc->trans_id) &
      (uint64_t) (0xFFFFFFFF));
 p_cc_mad->header.attr_id = attr_id;
 p_cc_mad->header.resv = 0;
 p_cc_mad->header.attr_mod = attr_mod;

 p_cc_mad->cc_key = p_opt->cc_key;

 memset(p_cc_mad->log_data, '\0', IB_CC_LOG_DATA_SIZE);

 p_madw->mad_addr.dest_lid = osm_node_get_base_lid(p_node, port);
 p_madw->mad_addr.addr_type.gsi.remote_qp = IB_QP1;
 p_madw->mad_addr.addr_type.gsi.remote_qkey =
  cl_hton32(IB_QP1_WELL_KNOWN_Q_KEY);
 p_madw->resp_expected = TRUE;
 p_madw->fail_msg = CL_DISP_MSGID_NONE;

 p_madw->context.cc_context.node_guid = osm_node_get_node_guid(p_node);
 p_madw->context.cc_context.port_guid = osm_physp_get_port_guid(p_physp);
 p_madw->context.cc_context.port = port;
 p_madw->context.cc_context.mad_method = IB_MAD_METHOD_SET;
 p_madw->context.cc_context.attr_mod = attr_mod;

 cl_spinlock_acquire(&p_cc->mad_queue_lock);
 cl_atomic_inc(&p_cc->outstanding_mads);
 cl_qlist_insert_tail(&p_cc->mad_queue, &p_madw->list_item);
 cl_spinlock_release(&p_cc->mad_queue_lock);

 cl_event_signal(&p_cc->cc_poller_wakeup);

 OSM_LOG_EXIT(p_cc->log);
}
