
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int mtu; int rate; } ;
struct TYPE_7__ {TYPE_1__ mcmember_rec; } ;
typedef TYPE_2__ osm_mgrp_t ;
typedef int osm_log_t ;
typedef int ib_net64_t ;
struct TYPE_8__ {int mtu; int rate; } ;
typedef TYPE_3__ ib_member_rec_t ;
typedef int boolean_t ;


 int FALSE ;
 int IB_MCR_COMPMASK_MTU_SEL ;
 int IB_MCR_COMPMASK_RATE_SEL ;
 int OSM_LOG (int *,int ,char*,int,int) ;
 int OSM_LOG_VERBOSE ;
 int TRUE ;
 int ib_path_compare_rates (int,int) ;

__attribute__((used)) static boolean_t validate_more_comp_fields(osm_log_t * p_log,
        const osm_mgrp_t * p_mgrp,
        const ib_member_rec_t *
        p_recvd_mcmember_rec,
        ib_net64_t comp_mask)
{
 uint8_t mtu_sel;
 uint8_t mtu_required;
 uint8_t mtu_mgrp;
 uint8_t rate_sel;
 uint8_t rate_required;
 uint8_t rate_mgrp;

 if (comp_mask & IB_MCR_COMPMASK_MTU_SEL) {
  mtu_sel = (uint8_t) (p_recvd_mcmember_rec->mtu >> 6);

  mtu_required = (uint8_t) (p_recvd_mcmember_rec->mtu & 0x3F);
  mtu_mgrp = (uint8_t) (p_mgrp->mcmember_rec.mtu & 0x3F);
  switch (mtu_sel) {
  case 0:
   if (mtu_mgrp <= mtu_required) {
    OSM_LOG(p_log, OSM_LOG_VERBOSE,
     "Requested mcast group has MTU %x, "
     "which is not greater than %x\n",
     mtu_mgrp, mtu_required);
    return FALSE;
   }
   break;
  case 1:
   if (mtu_mgrp >= mtu_required) {
    OSM_LOG(p_log, OSM_LOG_VERBOSE,
     "Requested mcast group has MTU %x, "
     "which is not less than %x\n",
     mtu_mgrp, mtu_required);
    return FALSE;
   }
   break;
  case 2:
   if (mtu_mgrp != mtu_required) {
    OSM_LOG(p_log, OSM_LOG_VERBOSE,
     "Requested mcast group has MTU %x, "
     "which is not equal to %x\n",
     mtu_mgrp, mtu_required);
    return FALSE;
   }
   break;
  default:
   break;
  }
 }


 if (comp_mask & IB_MCR_COMPMASK_RATE_SEL) {
  rate_sel = (uint8_t) (p_recvd_mcmember_rec->rate >> 6);

  rate_required = (uint8_t) (p_recvd_mcmember_rec->rate & 0x3F);
  rate_mgrp = (uint8_t) (p_mgrp->mcmember_rec.rate & 0x3F);
  switch (rate_sel) {
  case 0:
   if (ib_path_compare_rates(rate_mgrp, rate_required) <= 0) {
    OSM_LOG(p_log, OSM_LOG_VERBOSE,
     "Requested mcast group has RATE %x, "
     "which is not greater than %x\n",
     rate_mgrp, rate_required);
    return FALSE;
   }
   break;
  case 1:
   if (ib_path_compare_rates(rate_mgrp, rate_required) >= 0) {
    OSM_LOG(p_log, OSM_LOG_VERBOSE,
     "Requested mcast group has RATE %x, "
     "which is not less than %x\n",
     rate_mgrp, rate_required);
    return FALSE;
   }
   break;
  case 2:
   if (ib_path_compare_rates(rate_mgrp, rate_required)) {
    OSM_LOG(p_log, OSM_LOG_VERBOSE,
     "Requested mcast group has RATE %x, "
     "which is not equal to %x\n",
     rate_mgrp, rate_required);
    return FALSE;
   }
   break;
  default:
   break;
  }
 }

 return TRUE;
}
