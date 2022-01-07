
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int osm_sm_t ;
struct TYPE_3__ {int pkey; int part_guid_tbl; int full_guid_tbl; } ;
typedef TYPE_1__ osm_prtn_t ;
typedef int osm_physp_t ;
typedef int osm_log_t ;
typedef int ib_net16_t ;
typedef int cl_map_t ;
typedef scalar_t__ cl_map_iterator_t ;
typedef scalar_t__ boolean_t ;


 int cl_hton16 (int) ;
 scalar_t__ cl_map_end (int const*) ;
 scalar_t__ cl_map_head (int const*) ;
 scalar_t__ cl_map_next (scalar_t__) ;
 int * cl_map_obj (scalar_t__) ;
 int pkey_mgr_process_physical_port (int *,int *,int ,int *) ;

__attribute__((used)) static void
pkey_mgr_process_partition_table(osm_log_t * p_log, osm_sm_t * sm,
     const osm_prtn_t * p_prtn,
     const boolean_t full)
{
 const cl_map_t *p_tbl =
     full ? &p_prtn->full_guid_tbl : &p_prtn->part_guid_tbl;
 cl_map_iterator_t i, i_next;
 ib_net16_t pkey = p_prtn->pkey;
 osm_physp_t *p_physp;

 if (full)
  pkey |= cl_hton16(0x8000);

 i_next = cl_map_head(p_tbl);
 while (i_next != cl_map_end(p_tbl)) {
  i = i_next;
  i_next = cl_map_next(i);
  p_physp = cl_map_obj(i);
  if (p_physp)
   pkey_mgr_process_physical_port(p_log, sm, pkey,
             p_physp);
 }
}
