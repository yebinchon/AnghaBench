
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct part_conf {scalar_t__ membership; int indx0; TYPE_2__* p_subn; int p_log; int * p_prtn; } ;
typedef int osm_prtn_t ;
typedef scalar_t__ membership_t ;
typedef int ib_net64_t ;
struct TYPE_3__ {scalar_t__ allow_both_pkeys; } ;
struct TYPE_4__ {TYPE_1__ opt; int sm_port_guid; } ;


 scalar_t__ BOTH ;
 int FALSE ;
 scalar_t__ FULL ;
 int IB_NODE_TYPE_CA ;
 int IB_NODE_TYPE_ROUTER ;
 int IB_NODE_TYPE_SWITCH ;
 scalar_t__ IB_SUCCESS ;
 scalar_t__ LIMITED ;
 int OSM_LOG (int ,int ,char*,unsigned int,char*) ;
 int OSM_LOG_VERBOSE ;
 int TRUE ;
 int cl_hton64 (int ) ;
 int cl_ntoh64 (int ) ;
 int manage_membership_change (struct part_conf*,int *,int,scalar_t__,int ) ;
 scalar_t__ osm_prtn_add_port (int ,TYPE_2__*,int *,int ,int ,int ) ;
 int partition_add_all (struct part_conf*,int *,int ,scalar_t__) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int strtoull (char*,char**,int ) ;

__attribute__((used)) static int partition_add_port(unsigned lineno, struct part_conf *conf,
         char *name, char *flag)
{
 osm_prtn_t *p = conf->p_prtn;
 ib_net64_t guid;
 membership_t membership = conf->membership;

 if (!name || !*name || !strncmp(name, "NONE", strlen(name)))
  return 0;

 if (flag) {

  membership = LIMITED;
  if (!strncmp(flag, "full", strlen(flag)))
   membership = FULL;
  else if (!strncmp(flag, "both", strlen(flag)))
   membership = BOTH;
  else if (strncmp(flag, "limited", strlen(flag))) {
   OSM_LOG(conf->p_log, OSM_LOG_VERBOSE,
    "PARSE WARN: line %d: "
    "unrecognized port flag \'%s\'."
    " Assume \'limited\'\n", lineno, flag);
  }
 }

 if (!strncmp(name, "ALL", strlen(name)))
  return partition_add_all(conf, p, 0, membership);
 else if (!strncmp(name, "ALL_CAS", strlen(name)))
  return partition_add_all(conf, p, IB_NODE_TYPE_CA, membership);
 else if (!strncmp(name, "ALL_SWITCHES", strlen(name)))
  return partition_add_all(conf, p, IB_NODE_TYPE_SWITCH,
      membership);
 else if (!strncmp(name, "ALL_ROUTERS", strlen(name)))
  return partition_add_all(conf, p, IB_NODE_TYPE_ROUTER,
      membership);
 else if (!strncmp(name, "SELF", strlen(name))) {
  guid = cl_ntoh64(conf->p_subn->sm_port_guid);
 } else {
  char *end;
  guid = strtoull(name, &end, 0);
  if (!guid || *end)
   return -1;
 }

 manage_membership_change(conf, p, 0xFF, membership, guid);
 if (membership != LIMITED &&
     osm_prtn_add_port(conf->p_log, conf->p_subn, p,
         cl_hton64(guid), TRUE, conf->indx0) != IB_SUCCESS)
  return -1;
 if ((membership == LIMITED ||
     (membership == BOTH && conf->p_subn->opt.allow_both_pkeys)) &&
     osm_prtn_add_port(conf->p_log, conf->p_subn, p,
         cl_hton64(guid), FALSE, conf->indx0) != IB_SUCCESS)
  return -1;
 return 0;
}
