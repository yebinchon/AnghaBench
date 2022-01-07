
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int across_to_list; int across_from_list; int group_list; } ;
typedef TYPE_1__ osm_qos_sl2vl_scope_t ;


 scalar_t__ calloc (int,int) ;
 int cl_list_init (int *,int) ;

osm_qos_sl2vl_scope_t *osm_qos_policy_sl2vl_scope_create()
{
 osm_qos_sl2vl_scope_t *p =
     (osm_qos_sl2vl_scope_t *) calloc(1, sizeof(osm_qos_sl2vl_scope_t));
 if (p) {
  cl_list_init(&p->group_list, 10);
  cl_list_init(&p->across_from_list, 10);
  cl_list_init(&p->across_to_list, 10);
 }
 return p;
}
