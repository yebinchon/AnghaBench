
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ qkey; scalar_t__ tclass; int sl_flow_hop; int pkey; } ;
struct TYPE_7__ {TYPE_1__ mcmember_rec; } ;
typedef TYPE_2__ osm_mgrp_t ;
typedef int osm_log_t ;
typedef int osm_log_level_t ;
typedef int ib_net64_t ;
struct TYPE_8__ {scalar_t__ qkey; scalar_t__ tclass; int sl_flow_hop; int pkey; } ;
typedef TYPE_3__ ib_member_rec_t ;


 int IB_MCR_COMPMASK_FLOW ;
 int IB_MCR_COMPMASK_HOP ;
 int IB_MCR_COMPMASK_PKEY ;
 int IB_MCR_COMPMASK_QKEY ;
 int IB_MCR_COMPMASK_SL ;
 int IB_MCR_COMPMASK_TCLASS ;
 int OSM_LOG (int *,int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ cl_ntoh16 (int ) ;
 scalar_t__ cl_ntoh32 (scalar_t__) ;
 int ib_member_get_sl_flow_hop (int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ ib_pkey_get_base (int ) ;
 scalar_t__ ib_pkey_is_full_member (int ) ;

__attribute__((used)) static int validate_other_comp_fields(osm_log_t * p_log, ib_net64_t comp_mask,
          const ib_member_rec_t * p_mcmr,
          osm_mgrp_t * p_mgrp,
          osm_log_level_t log_level)
{
 int ret = 0;

 if ((IB_MCR_COMPMASK_QKEY & comp_mask) &&
     p_mcmr->qkey != p_mgrp->mcmember_rec.qkey) {
  OSM_LOG(p_log, log_level, "ERR 1B30: "
   "Q_Key mismatch: query 0x%x group 0x%x\n",
   cl_ntoh32(p_mcmr->qkey),
   cl_ntoh32(p_mgrp->mcmember_rec.qkey));
  goto Exit;
 }

 if (IB_MCR_COMPMASK_PKEY & comp_mask) {
  if (!(ib_pkey_is_full_member(p_mcmr->pkey) ||
        ib_pkey_is_full_member(p_mgrp->mcmember_rec.pkey))) {
   OSM_LOG(p_log, log_level, "ERR 1B31: "
    "Both limited P_Keys: query 0x%x group 0x%x\n",
    cl_ntoh16(p_mcmr->pkey),
    cl_ntoh16(p_mgrp->mcmember_rec.pkey));
   goto Exit;
  }
  if (ib_pkey_get_base(p_mcmr->pkey) !=
      ib_pkey_get_base(p_mgrp->mcmember_rec.pkey)) {
   OSM_LOG(p_log, log_level, "ERR 1B32: "
    "P_Key base mismatch: query 0x%x group 0x%x\n",
    cl_ntoh16(p_mcmr->pkey),
    cl_ntoh16(p_mgrp->mcmember_rec.pkey));
   goto Exit;
  }
 }

 if ((IB_MCR_COMPMASK_TCLASS & comp_mask) &&
     p_mcmr->tclass != p_mgrp->mcmember_rec.tclass) {
  OSM_LOG(p_log, log_level, "ERR 1B33: "
   "TClass mismatch: query %d group %d\n",
   p_mcmr->tclass, p_mgrp->mcmember_rec.tclass);
  goto Exit;
 }


 {
  uint32_t mgrp_flow, query_flow;
  uint8_t mgrp_sl, query_sl;
  uint8_t mgrp_hop, query_hop;

  ib_member_get_sl_flow_hop(p_mcmr->sl_flow_hop,
       &query_sl, &query_flow, &query_hop);

  ib_member_get_sl_flow_hop(p_mgrp->mcmember_rec.sl_flow_hop,
       &mgrp_sl, &mgrp_flow, &mgrp_hop);

  if ((IB_MCR_COMPMASK_SL & comp_mask) && query_sl != mgrp_sl) {
   OSM_LOG(p_log, log_level, "ERR 1B34: "
    "SL mismatch: query %d group %d\n",
    query_sl, mgrp_sl);
   goto Exit;
  }

  if ((IB_MCR_COMPMASK_FLOW & comp_mask) &&
      query_flow != mgrp_flow) {
   OSM_LOG(p_log, log_level, "ERR 1B35: "
    "FlowLabel mismatch: query 0x%x group 0x%x\n",
    query_flow, mgrp_flow);
   goto Exit;
  }

  if ((IB_MCR_COMPMASK_HOP & comp_mask) && query_hop != mgrp_hop) {
   OSM_LOG(p_log, log_level, "ERR 1B36: "
    "Hop mismatch: query %d group %d\n",
    query_hop, mgrp_hop);
   goto Exit;
  }
 }

 ret = 1;
Exit:
 return ret;
}
