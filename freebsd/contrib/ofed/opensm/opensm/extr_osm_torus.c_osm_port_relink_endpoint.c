
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct t_switch {struct endpoint** port; TYPE_2__* osm_switch; } ;
struct endpoint {scalar_t__ n_id; TYPE_3__* osm_port; TYPE_1__* link; } ;
struct TYPE_11__ {struct t_switch* priv; } ;
typedef TYPE_2__ osm_switch_t ;
struct TYPE_12__ {struct endpoint* priv; TYPE_4__* p_node; int * p_physp; } ;
typedef TYPE_3__ osm_port_t ;
typedef int osm_physp_t ;
struct TYPE_13__ {TYPE_2__* sw; } ;
typedef TYPE_4__ osm_node_t ;
typedef scalar_t__ guid_t ;
struct TYPE_10__ {struct endpoint* end; } ;


 scalar_t__ IB_NODE_TYPE_SWITCH ;
 scalar_t__ osm_node_get_node_guid (TYPE_4__*) ;
 TYPE_4__* osm_node_get_remote_node (TYPE_4__*,scalar_t__,scalar_t__*) ;
 scalar_t__ osm_node_get_type (TYPE_4__*) ;
 scalar_t__ osm_physp_get_port_num (int *) ;

__attribute__((used)) static
struct endpoint *osm_port_relink_endpoint(const osm_port_t *osm_port)
{
 guid_t node_guid;
 uint8_t port_num, r_port_num;
 struct t_switch *sw;
 struct endpoint *ep = ((void*)0);
 osm_switch_t *osm_sw;
 osm_physp_t *osm_physp;
 osm_node_t *osm_node, *r_osm_node;






 osm_physp = osm_port->p_physp;
 osm_node = osm_port->p_node;
 port_num = osm_physp_get_port_num(osm_physp);
 node_guid = osm_node_get_node_guid(osm_node);



 if (port_num == 0 &&
     osm_node_get_type(osm_node) == IB_NODE_TYPE_SWITCH) {

  osm_sw = osm_node->sw;
  if (osm_sw && osm_sw->priv) {
   sw = osm_sw->priv;
   if (sw->osm_switch == osm_sw &&
       sw->port[0]->n_id == node_guid) {

    ep = sw->port[0];
    goto relink_priv;
   }
  }
 }




 r_osm_node = osm_node_get_remote_node(osm_node, port_num, &r_port_num);
 if (!r_osm_node)
  goto out;

 osm_sw = r_osm_node->sw;
 if (!osm_sw)
  goto out;

 sw = osm_sw->priv;
 if (!(sw && sw->osm_switch == osm_sw))
  goto out;

 ep = sw->port[r_port_num];
 if (!(ep && ep->link))
  goto out;

 if (ep->link->end[0].n_id == node_guid) {
  ep = &ep->link->end[0];
  goto relink_priv;
 }
 if (ep->link->end[1].n_id == node_guid) {
  ep = &ep->link->end[1];
  goto relink_priv;
 }
 ep = ((void*)0);
 goto out;

relink_priv:
 ((osm_port_t *)osm_port)->priv = ep;
 ep->osm_port = (osm_port_t *)osm_port;
out:
 return ep;
}
