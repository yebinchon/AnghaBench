
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_8__ {scalar_t__ sl; int FlowLabel; int TClass; scalar_t__ Q_Key; int rate; int mtu; } ;
struct TYPE_12__ {int * raw; } ;
struct precreate_mgroup {TYPE_2__ flags; TYPE_6__ mgid; } ;
struct TYPE_9__ {scalar_t__ sl; int FlowLabel; int TClass; scalar_t__ Q_Key; int rate; int mtu; } ;
struct part_conf {TYPE_3__ flags; TYPE_4__* p_prtn; scalar_t__ is_ipoib; int p_log; TYPE_5__* p_subn; } ;
typedef int pkey ;
typedef int ib_net16_t ;
typedef int broadcast_mgroup ;
struct TYPE_7__ {int qos; } ;
struct TYPE_11__ {TYPE_1__ opt; } ;
struct TYPE_10__ {int pkey; scalar_t__ sl; } ;


 int CL_HTON16 (int) ;
 scalar_t__ OSM_DEFAULT_SL ;
 scalar_t__ OSM_IPOIB_BROADCAST_MGRP_QKEY ;
 int OSM_LOG (int ,int ,char*,scalar_t__,scalar_t__,char*) ;
 int OSM_LOG_DEBUG ;
 int __create_mgrp (struct part_conf*,struct precreate_mgroup*) ;
 int cl_hton16 (int ) ;
 scalar_t__ isdigit (char) ;
 int memcpy (int *,int*,int) ;
 int memset (struct precreate_mgroup*,int ,int) ;
 TYPE_6__ osm_ipoib_broadcast_mgid ;
 TYPE_4__* osm_prtn_make_new (int ,TYPE_5__*,char*,int) ;
 scalar_t__ strtoul (char*,char**,int ) ;

__attribute__((used)) static int partition_create(unsigned lineno, struct part_conf *conf,
       char *name, char *id, char *flag, char *flag_val)
{
 ib_net16_t pkey;

 if (!id && name && isdigit(*name)) {
  id = name;
  name = ((void*)0);
 }

 if (id) {
  char *end;

  pkey = cl_hton16((uint16_t)strtoul(id, &end, 0));
  if (end == id || *end)
   return -1;
 } else
  pkey = 0;

 conf->p_prtn = osm_prtn_make_new(conf->p_log, conf->p_subn,
      name, pkey);
 if (!conf->p_prtn)
  return -1;

 if (!conf->p_subn->opt.qos && conf->flags.sl != OSM_DEFAULT_SL) {
  OSM_LOG(conf->p_log, OSM_LOG_DEBUG, "Overriding SL %d"
   " to default SL %d on partition %s"
   " as QoS is not enabled.\n",
   conf->flags.sl, OSM_DEFAULT_SL, name);
  conf->flags.sl = OSM_DEFAULT_SL;
 }
 conf->p_prtn->sl = (uint8_t) conf->flags.sl;

 if (conf->is_ipoib) {
  struct precreate_mgroup broadcast_mgroup;
  memset(&broadcast_mgroup, 0, sizeof(broadcast_mgroup));
  broadcast_mgroup.mgid = osm_ipoib_broadcast_mgid;
  pkey = CL_HTON16(0x8000) | conf->p_prtn->pkey;
  memcpy(&broadcast_mgroup.mgid.raw[4], &pkey , sizeof(pkey));
  broadcast_mgroup.flags.mtu = conf->flags.mtu;
  broadcast_mgroup.flags.rate = conf->flags.rate;
  broadcast_mgroup.flags.sl = conf->flags.sl;
  broadcast_mgroup.flags.Q_Key = conf->flags.Q_Key ?
      conf->flags.Q_Key :
      OSM_IPOIB_BROADCAST_MGRP_QKEY;
  broadcast_mgroup.flags.TClass = conf->flags.TClass;
  broadcast_mgroup.flags.FlowLabel = conf->flags.FlowLabel;
  __create_mgrp(conf, &broadcast_mgroup);
 }

 return 0;
}
