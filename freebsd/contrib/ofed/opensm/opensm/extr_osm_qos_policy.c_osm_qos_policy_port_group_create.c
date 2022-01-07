
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port_map; } ;
typedef TYPE_1__ osm_qos_port_group_t ;


 scalar_t__ calloc (int,int) ;
 int cl_qmap_init (int *) ;

osm_qos_port_group_t *osm_qos_policy_port_group_create()
{
 osm_qos_port_group_t *p =
     (osm_qos_port_group_t *) calloc(1, sizeof(osm_qos_port_group_t));
 if (p)
  cl_qmap_init(&p->port_map);
 return p;
}
