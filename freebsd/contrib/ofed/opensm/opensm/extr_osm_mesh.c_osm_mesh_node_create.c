
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_5__* node; TYPE_2__* p_sw; } ;
typedef TYPE_4__ switch_t ;
typedef int osm_log_t ;
struct TYPE_15__ {TYPE_3__** links; void* axes; } ;
typedef TYPE_5__ mesh_node_t ;
typedef int link_t ;
struct TYPE_16__ {TYPE_1__* p_osm; } ;
typedef TYPE_6__ lash_t ;
struct TYPE_13__ {int switch_id; } ;
struct TYPE_12__ {unsigned int num_ports; } ;
struct TYPE_11__ {int log; } ;


 int NONE ;
 int OSM_LOG (int *,int ,char*) ;
 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_EXIT (int *) ;
 void* calloc (unsigned int,int) ;
 int osm_mesh_node_delete (TYPE_6__*,TYPE_4__*) ;

int osm_mesh_node_create(lash_t *p_lash, switch_t *sw)
{
 osm_log_t *p_log = &p_lash->p_osm->log;
 unsigned i;
 mesh_node_t *node;
 unsigned num_ports = sw->p_sw->num_ports;

 OSM_LOG_ENTER(p_log);

 if (!(node = sw->node = calloc(1, sizeof(mesh_node_t) + num_ports * sizeof(link_t *))))
  goto err;

 for (i = 0; i < num_ports; i++)
  if (!(node->links[i] = calloc(1, sizeof(link_t) + num_ports * sizeof(int))))
   goto err;

 if (!(node->axes = calloc(num_ports, sizeof(int))))
  goto err;

 for (i = 0; i < num_ports; i++) {
  node->links[i]->switch_id = NONE;
 }

 OSM_LOG_EXIT(p_log);
 return 0;

err:
 osm_mesh_node_delete(p_lash, sw);
 OSM_LOG(p_log, OSM_LOG_ERROR,
  "Failed allocating mesh node - out of memory\n");
 OSM_LOG_EXIT(p_log);
 return -1;
}
