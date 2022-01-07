
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_subn; } ;
typedef TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_7__ {int * priv; } ;
typedef TYPE_3__ osm_port_t ;
typedef int cl_qmap_t ;
typedef int cl_map_item_t ;
struct TYPE_5__ {int port_guid_tbl; } ;


 int * cl_qmap_end (int *) ;
 int * cl_qmap_head (int *) ;
 int * cl_qmap_next (int *) ;
 int free (int *) ;

__attribute__((used)) static void free_ports_priv(osm_ucast_mgr_t * mgr)
{
 cl_qmap_t *port_tbl = &mgr->p_subn->port_guid_tbl;
 osm_port_t *port;
 cl_map_item_t *item;
 for (item = cl_qmap_head(port_tbl); item != cl_qmap_end(port_tbl);
      item = cl_qmap_next(item)) {
  port = (osm_port_t *) item;
  if (port->priv) {
   free(port->priv);
   port->priv = ((void*)0);
  }
 }
}
