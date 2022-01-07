
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int port_guid_tbl; } ;
typedef TYPE_1__ osm_subn_t ;
typedef int osm_prtn_t ;
struct TYPE_7__ {int p_node; } ;
typedef TYPE_2__ osm_port_t ;
typedef int osm_log_t ;
typedef scalar_t__ ib_api_status_t ;
typedef int cl_qmap_t ;
typedef int cl_map_item_t ;
typedef int boolean_t ;


 scalar_t__ IB_SUCCESS ;
 int * cl_qmap_end (int *) ;
 int * cl_qmap_head (int *) ;
 int * cl_qmap_next (int *) ;
 unsigned int osm_node_get_type (int ) ;
 int osm_port_get_guid (TYPE_2__*) ;
 scalar_t__ osm_prtn_add_port (int *,TYPE_1__*,int *,int ,int ,int ) ;

ib_api_status_t osm_prtn_add_all(osm_log_t * p_log, osm_subn_t * p_subn,
     osm_prtn_t * p, unsigned type,
     boolean_t full, boolean_t indx0)
{
 cl_qmap_t *p_port_tbl = &p_subn->port_guid_tbl;
 cl_map_item_t *p_item;
 osm_port_t *p_port;
 ib_api_status_t status = IB_SUCCESS;

 p_item = cl_qmap_head(p_port_tbl);
 while (p_item != cl_qmap_end(p_port_tbl)) {
  p_port = (osm_port_t *) p_item;
  p_item = cl_qmap_next(p_item);
  if (!type || osm_node_get_type(p_port->p_node) == type) {
   status = osm_prtn_add_port(p_log, p_subn, p,
         osm_port_get_guid(p_port),
         full, indx0);
   if (status != IB_SUCCESS)
    goto _err;
  }
 }

_err:
 return status;
}
