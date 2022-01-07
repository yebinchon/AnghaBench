
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int* raw; } ;
struct TYPE_9__ {scalar_t__ Q_Key; int scope_mask; int FlowLabel; int sl; int rate; int mtu; } ;
struct precreate_mgroup {TYPE_4__ mgid; TYPE_3__ flags; } ;
struct TYPE_7__ {scalar_t__ Q_Key; int scope_mask; int FlowLabel; int sl; int rate; int mtu; } ;
struct part_conf {int p_subn; TYPE_2__* p_prtn; int p_log; TYPE_1__ flags; } ;
typedef int pkey ;
typedef int mgroup ;
typedef int ib_net16_t ;
struct TYPE_8__ {int pkey; } ;


 int AF_INET6 ;
 scalar_t__ OSM_IPOIB_BROADCAST_MGRP_QKEY ;
 int OSM_LOG (int ,int ,char*,unsigned int,char*) ;
 int OSM_LOG_ERROR ;
 int __create_mgrp (struct part_conf*,struct precreate_mgroup*) ;
 int cl_hton16 (int) ;
 int inet_pton (int ,char*,TYPE_4__*) ;
 int ip_mgroup_mtu_ok (struct part_conf*,struct precreate_mgroup*) ;
 int ip_mgroup_pkey_ok (struct part_conf*,struct precreate_mgroup*) ;
 int ip_mgroup_rate_ok (struct part_conf*,struct precreate_mgroup*) ;
 int memcpy (int*,int*,int) ;
 int memset (struct precreate_mgroup*,int ,int) ;
 scalar_t__ mgid_is_ip (TYPE_4__*) ;
 scalar_t__ osm_get_mgrp_by_mgid (int ,TYPE_4__*) ;
 int parse_mgroup_flags (int ,struct precreate_mgroup*,char*,unsigned int) ;

__attribute__((used)) static int mgroup_create(char *p, char *mgid, unsigned lineno, struct part_conf *conf)
{
 int ret = 0;
 struct precreate_mgroup mgroup;

 memset(&mgroup, 0, sizeof(mgroup));

 if (inet_pton(AF_INET6, mgid, &mgroup.mgid) != 1
     || mgroup.mgid.raw[0] != 0xff) {
  OSM_LOG(conf->p_log, OSM_LOG_ERROR,
   "PARSE ERROR partition conf file line %d: "
   "mgid \"%s\": gid is not multicast\n", lineno, mgid);
  return 0;
 }


 mgroup.flags.mtu = conf->flags.mtu;
 mgroup.flags.rate = conf->flags.rate;
 mgroup.flags.sl = conf->flags.sl;
 mgroup.flags.Q_Key = conf->flags.Q_Key;
 mgroup.flags.FlowLabel = conf->flags.FlowLabel;
 mgroup.flags.scope_mask = conf->flags.scope_mask;


 ret = parse_mgroup_flags(conf->p_log, &mgroup, p, lineno);


 if (mgid_is_ip(&mgroup.mgid)) {
  ib_net16_t pkey = conf->p_prtn->pkey | cl_hton16(0x8000);

  if (!ip_mgroup_pkey_ok(conf, &mgroup)
      || !ip_mgroup_rate_ok(conf, &mgroup)
      || !ip_mgroup_mtu_ok(conf, &mgroup))
   goto error;


  memcpy(&mgroup.mgid.raw[4], &pkey, sizeof(pkey));

  if (mgroup.flags.Q_Key == 0)
   mgroup.flags.Q_Key = OSM_IPOIB_BROADCAST_MGRP_QKEY;
 }


 if (osm_get_mgrp_by_mgid(conf->p_subn, &mgroup.mgid))
  goto error;


 __create_mgrp(conf, &mgroup);

error:
 return ret;
}
