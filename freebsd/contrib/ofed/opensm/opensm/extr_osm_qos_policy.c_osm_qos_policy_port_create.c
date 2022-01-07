
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_physp; } ;
typedef TYPE_1__ osm_qos_port_t ;
typedef int osm_physp_t ;


 scalar_t__ calloc (int,int) ;

osm_qos_port_t *osm_qos_policy_port_create(osm_physp_t *p_physp)
{
 osm_qos_port_t *p =
     (osm_qos_port_t *) calloc(1, sizeof(osm_qos_port_t));
 if (p)
  p->p_physp = p_physp;
 return p;
}
