
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int destination_group_list; int destination_list; int source_group_list; int source_list; } ;
typedef TYPE_1__ osm_qos_match_rule_t ;


 scalar_t__ calloc (int,int) ;
 int cl_list_init (int *,int) ;

osm_qos_match_rule_t *osm_qos_policy_match_rule_create()
{
 osm_qos_match_rule_t *p =
     (osm_qos_match_rule_t *) calloc(1, sizeof(osm_qos_match_rule_t));
 if (p) {
  cl_list_init(&p->source_list, 10);
  cl_list_init(&p->source_group_list, 10);
  cl_list_init(&p->destination_list, 10);
  cl_list_init(&p->destination_group_list, 10);
 }
 return p;
}
