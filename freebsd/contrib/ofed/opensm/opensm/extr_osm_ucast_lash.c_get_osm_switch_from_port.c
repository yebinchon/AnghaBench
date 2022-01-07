
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int osm_switch_t ;
struct TYPE_10__ {TYPE_5__* p_physp; } ;
typedef TYPE_4__ osm_port_t ;
struct TYPE_11__ {TYPE_3__* p_remote_physp; TYPE_1__* p_node; } ;
typedef TYPE_5__ osm_physp_t ;
struct TYPE_9__ {TYPE_2__* p_node; } ;
struct TYPE_8__ {int * sw; } ;
struct TYPE_7__ {int * sw; } ;



__attribute__((used)) static osm_switch_t *get_osm_switch_from_port(const osm_port_t * port)
{
 osm_physp_t *p = port->p_physp;
 if (p->p_node->sw)
  return p->p_node->sw;
 else if (p->p_remote_physp && p->p_remote_physp->p_node->sw)
  return p->p_remote_physp->p_node->sw;
 return ((void*)0);
}
