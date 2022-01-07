
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_17__ {int subnet_timeout; } ;
struct TYPE_18__ {TYPE_2__ opt; TYPE_1__* p_osm; } ;
typedef TYPE_3__ osm_subn_t ;
typedef int osm_sa_t ;
struct TYPE_19__ {int pkey; } ;
typedef TYPE_4__ osm_prtn_t ;
typedef int osm_mgrp_t ;
typedef int osm_log_t ;
typedef int mc_rec ;
typedef int ib_net64_t ;
typedef int ib_net16_t ;
struct TYPE_21__ {int raw; } ;
struct TYPE_20__ {int mtu; int tclass; int pkey; int rate; TYPE_6__ mgid; int scope_state; int sl_flow_hop; int pkt_life; int qkey; } ;
typedef TYPE_5__ ib_member_rec_t ;
typedef TYPE_6__ ib_gid_t ;
typedef int ib_api_status_t ;
struct TYPE_16__ {int sa; } ;


 int AF_INET6 ;
 int CL_HTON32 (int ) ;
 int IB_ERROR ;
 int IB_HOPLIMIT_MAX ;
 int IB_MCR_COMPMASK_MTU ;
 int IB_MCR_COMPMASK_MTU_SEL ;
 int IB_MCR_COMPMASK_RATE ;
 int IB_MCR_COMPMASK_RATE_SEL ;
 int IB_MC_REC_STATE_FULL_MEMBER ;
 int IB_MC_SCOPE_LINK_LOCAL ;
 int IB_PATH_SELECTOR_EXACTLY ;
 int INET6_ADDRSTRLEN ;
 int OSM_DEFAULT_MGRP_SCOPE ;
 int OSM_LOG (int *,int ,char*,int ,int ) ;
 int OSM_LOG_ERROR ;
 int cl_hton16 (int) ;
 int cl_ntoh16 (int) ;
 int ib_member_set_scope_state (int,int ) ;
 int ib_member_set_sl_flow_hop (int,int ,int) ;
 int ib_mgid_set_scope (TYPE_6__*,int) ;
 int inet_ntop (int ,int ,char*,int) ;
 int memset (TYPE_5__*,int ,int) ;
 int * osm_mcmr_rcv_find_or_create_new_mgrp (int *,int,TYPE_5__*) ;
 int track_mgrp_w_partition (int *,TYPE_4__*,int *,TYPE_3__*,TYPE_6__ const*,int) ;

ib_api_status_t osm_prtn_add_mcgroup(osm_log_t * p_log, osm_subn_t * p_subn,
         osm_prtn_t * p, uint8_t rate, uint8_t mtu,
         uint8_t sl, uint8_t scope, uint32_t Q_Key,
         uint8_t tclass, uint32_t FlowLabel,
         const ib_gid_t *mgid)
{
 char gid_str[INET6_ADDRSTRLEN];
 ib_member_rec_t mc_rec;
 ib_net64_t comp_mask;
 ib_net16_t pkey;
 osm_mgrp_t *mgrp;
 osm_sa_t *p_sa = &p_subn->p_osm->sa;
 uint8_t hop_limit;

 pkey = p->pkey | cl_hton16(0x8000);
 if (!scope)
  scope = OSM_DEFAULT_MGRP_SCOPE;
 hop_limit = (scope == IB_MC_SCOPE_LINK_LOCAL) ? 0 : IB_HOPLIMIT_MAX;

 memset(&mc_rec, 0, sizeof(mc_rec));

 mc_rec.mgid = *mgid;

 mc_rec.qkey = CL_HTON32(Q_Key);
 mc_rec.mtu = mtu | (IB_PATH_SELECTOR_EXACTLY << 6);
 mc_rec.tclass = tclass;
 mc_rec.pkey = pkey;
 mc_rec.rate = rate | (IB_PATH_SELECTOR_EXACTLY << 6);
 mc_rec.pkt_life = p_subn->opt.subnet_timeout;
 mc_rec.sl_flow_hop = ib_member_set_sl_flow_hop(sl, FlowLabel, hop_limit);

 mc_rec.scope_state =
     ib_member_set_scope_state(scope, IB_MC_REC_STATE_FULL_MEMBER);
 ib_mgid_set_scope(&mc_rec.mgid, scope);


 comp_mask = IB_MCR_COMPMASK_MTU | IB_MCR_COMPMASK_MTU_SEL |
     IB_MCR_COMPMASK_RATE | IB_MCR_COMPMASK_RATE_SEL;
 mgrp = osm_mcmr_rcv_find_or_create_new_mgrp(p_sa, comp_mask, &mc_rec);
 if (!mgrp) {
  OSM_LOG(p_log, OSM_LOG_ERROR,
   "Failed to create MC group (%s) with pkey 0x%04x\n",
   inet_ntop(AF_INET6, mgid->raw, gid_str, sizeof gid_str),
   cl_ntoh16(pkey));
  return IB_ERROR;
 }

 return (track_mgrp_w_partition(p_log, p, mgrp, p_subn, mgid, pkey));
}
