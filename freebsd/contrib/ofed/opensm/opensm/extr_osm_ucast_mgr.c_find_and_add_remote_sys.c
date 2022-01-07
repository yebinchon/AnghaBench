
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct osm_remote_node {scalar_t__ port; scalar_t__ forwarded_to; int * node; } ;
struct osm_remote_guids_count {unsigned int count; struct osm_remote_node* guids; } ;
struct TYPE_6__ {int p_node; } ;
typedef TYPE_1__ osm_switch_t ;
struct TYPE_7__ {TYPE_3__* p_remote_physp; } ;
typedef TYPE_2__ osm_physp_t ;
typedef int osm_node_t ;
typedef int boolean_t ;
struct TYPE_8__ {int * p_node; } ;


 TYPE_2__* osm_node_get_physp_ptr (int ,scalar_t__) ;
 scalar_t__ osm_physp_get_port_num (TYPE_3__*) ;

__attribute__((used)) static struct osm_remote_node *find_and_add_remote_sys(osm_switch_t * sw,
             uint8_t port,
             boolean_t dor, struct
             osm_remote_guids_count
             *r)
{
 unsigned i;
 osm_physp_t *p = osm_node_get_physp_ptr(sw->p_node, port);
 osm_node_t *node = p->p_remote_physp->p_node;
 uint8_t rem_port = osm_physp_get_port_num(p->p_remote_physp);

 for (i = 0; i < r->count; i++)
  if (r->guids[i].node == node)
   if (!dor || (r->guids[i].port == rem_port))
    return &r->guids[i];

 r->guids[i].node = node;
 r->guids[i].forwarded_to = 0;
 r->guids[i].port = rem_port;
 r->count++;
 return &r->guids[i];
}
