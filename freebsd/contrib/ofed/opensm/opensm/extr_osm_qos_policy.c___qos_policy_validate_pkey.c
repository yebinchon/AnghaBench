
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* p_subn; } ;
typedef TYPE_4__ osm_qos_policy_t ;
struct TYPE_14__ {TYPE_3__* p_qos_level; } ;
typedef TYPE_5__ osm_qos_match_rule_t ;
struct TYPE_15__ {scalar_t__ sl; int pkey; } ;
typedef TYPE_6__ osm_prtn_t ;
struct TYPE_12__ {scalar_t__ sl; int sl_set; } ;
struct TYPE_11__ {TYPE_1__* p_osm; } ;
struct TYPE_10__ {int log; } ;


 int OSM_LOG (int *,int ,char*,scalar_t__,int ,scalar_t__) ;
 int OSM_LOG_VERBOSE ;
 int cl_ntoh16 (int ) ;

__attribute__((used)) static void __qos_policy_validate_pkey(
   osm_qos_policy_t * p_qos_policy,
   osm_qos_match_rule_t * p_qos_match_rule,
   osm_prtn_t * p_prtn)
{
 if (!p_qos_policy || !p_qos_match_rule || !p_prtn)
  return;

 if (!p_qos_match_rule->p_qos_level->sl_set ||
     p_prtn->sl == p_qos_match_rule->p_qos_level->sl)
  return;

 OSM_LOG(&p_qos_policy->p_subn->p_osm->log, OSM_LOG_VERBOSE,
  "QoS Level SL (%u) for Pkey 0x%04X in match rule "
  "differs from  partition SL (%u)\n",
  p_qos_match_rule->p_qos_level->sl,
  cl_ntoh16(p_prtn->pkey), p_prtn->sl);
}
