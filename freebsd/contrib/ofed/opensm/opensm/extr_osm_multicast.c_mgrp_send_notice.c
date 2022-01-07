
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_24__ {int subnet_prefix; } ;
struct TYPE_27__ {int sm_port_guid; TYPE_6__ opt; int sm_base_lid; } ;
typedef TYPE_9__ osm_subn_t ;
struct TYPE_23__ {int mgid; } ;
struct TYPE_17__ {TYPE_5__ mcmember_rec; } ;
typedef TYPE_10__ osm_mgrp_t ;
typedef int osm_log_t ;
struct TYPE_25__ {int interface_id; int prefix; } ;
struct TYPE_26__ {TYPE_7__ unicast; } ;
struct TYPE_21__ {int gid; } ;
struct TYPE_22__ {TYPE_3__ ntc_64_67; } ;
struct TYPE_19__ {int trap_num; } ;
struct TYPE_20__ {TYPE_1__ generic; } ;
struct TYPE_18__ {int generic_type; TYPE_8__ issuer_gid; TYPE_4__ data_details; int issuer_lid; TYPE_2__ g_or_v; } ;
typedef TYPE_11__ ib_mad_notice_attr_t ;
typedef int ib_gid_t ;
typedef int ib_api_status_t ;


 int CL_HTON16 (unsigned int) ;
 int IB_NOTICE_TYPE_SUBN_MGMT ;
 int OSM_LOG (int *,int ,char*,int ) ;
 int OSM_LOG_ERROR ;
 int ib_get_err_str (int ) ;
 int ib_notice_set_prod_type_ho (TYPE_11__*,int) ;
 int memcpy (int *,int *,int) ;
 int osm_report_notice (int *,TYPE_9__*,TYPE_11__*) ;

__attribute__((used)) static void mgrp_send_notice(osm_subn_t * subn, osm_log_t * log,
        osm_mgrp_t * mgrp, unsigned num)
{
 ib_mad_notice_attr_t notice;
 ib_api_status_t status;

 notice.generic_type = 0x80 | IB_NOTICE_TYPE_SUBN_MGMT;
 ib_notice_set_prod_type_ho(&notice, 4);
 notice.g_or_v.generic.trap_num = CL_HTON16(num);

 notice.issuer_lid = subn->sm_base_lid;


 memcpy(&notice.data_details.ntc_64_67.gid,
        &mgrp->mcmember_rec.mgid, sizeof(ib_gid_t));



 notice.issuer_gid.unicast.prefix = subn->opt.subnet_prefix;
 notice.issuer_gid.unicast.interface_id = subn->sm_port_guid;

 if ((status = osm_report_notice(log, subn, &notice)))
  OSM_LOG(log, OSM_LOG_ERROR, "ERR 7601: "
   "Error sending trap reports (%s)\n",
   ib_get_err_str(status));
}
