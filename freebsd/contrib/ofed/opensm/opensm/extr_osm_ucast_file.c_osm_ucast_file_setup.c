
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osm_routing_engine {int ucast_build_fwd_tables; int build_lid_matrices; int * context; } ;
typedef int osm_opensm_t ;


 int do_lid_matrix_file_load ;
 int do_ucast_file_load ;

int osm_ucast_file_setup(struct osm_routing_engine *r, osm_opensm_t *osm)
{
 r->context = osm;
 r->build_lid_matrices = do_lid_matrix_file_load;
 r->ucast_build_fwd_tables = do_ucast_file_load;
 return 0;
}
