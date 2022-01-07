
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* node; } ;
typedef TYPE_4__ switch_t ;
typedef int osm_log_t ;
struct TYPE_13__ {unsigned int num_links; TYPE_6__** links; } ;
typedef TYPE_5__ mesh_node_t ;
struct TYPE_14__ {int switch_id; int* ports; int link_id; int num_ports; } ;
typedef TYPE_6__ link_t ;
struct TYPE_15__ {TYPE_4__** switches; TYPE_3__* p_osm; } ;
typedef TYPE_7__ lash_t ;
struct TYPE_9__ {scalar_t__ do_mesh_analysis; } ;
struct TYPE_10__ {TYPE_1__ opt; } ;
struct TYPE_11__ {TYPE_2__ subn; int log; } ;


 int OSM_LOG (int *,int ,char*,int,int,int) ;
 int OSM_LOG_VERBOSE ;

__attribute__((used)) static void connect_switches(lash_t * p_lash, int sw1, int sw2, int phy_port_1)
{
 osm_log_t *p_log = &p_lash->p_osm->log;
 unsigned num = p_lash->switches[sw1]->node->num_links;
 switch_t *s1 = p_lash->switches[sw1];
 mesh_node_t *node = s1->node;
 switch_t *s2;
 link_t *l;
 unsigned int i;







 if (p_lash->p_osm->subn.opt.do_mesh_analysis) {
  if (sw1 == sw2)
   return;


  for (i = 0; i < num; i++) {
   l = node->links[i];

   if (node->links[i]->switch_id == sw2) {
    l->ports[l->num_ports++] = phy_port_1;
    return;
   }
  }
 }

 l = node->links[num];
 l->switch_id = sw2;
 l->link_id = -1;
 l->ports[l->num_ports++] = phy_port_1;

 s2 = p_lash->switches[sw2];
 for (i = 0; i < s2->node->num_links; i++) {
  if (s2->node->links[i]->switch_id == sw1) {
   s2->node->links[i]->link_id = num;
   l->link_id = i;
   break;
  }
 }

 node->num_links++;

 OSM_LOG(p_log, OSM_LOG_VERBOSE,
  "LASH connect: %d, %d, %d\n", sw1, sw2, phy_port_1);
}
