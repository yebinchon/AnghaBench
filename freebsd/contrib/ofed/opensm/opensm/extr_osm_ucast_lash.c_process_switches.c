
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int map_item; } ;
typedef TYPE_2__ osm_switch_t ;
struct TYPE_10__ {int sw_guid_tbl; } ;
typedef TYPE_3__ osm_subn_t ;
struct TYPE_11__ {TYPE_1__* p_osm; } ;
typedef TYPE_4__ lash_t ;
struct TYPE_8__ {TYPE_3__ subn; } ;


 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_head (int *) ;
 scalar_t__ cl_qmap_next (int *) ;
 int osm_lash_process_switch (TYPE_4__*,TYPE_2__*) ;

__attribute__((used)) static void process_switches(lash_t * p_lash)
{
 osm_switch_t *p_sw, *p_next_sw;
 osm_subn_t *p_subn = &p_lash->p_osm->subn;



 p_next_sw = (osm_switch_t *) cl_qmap_head(&p_subn->sw_guid_tbl);
 while (p_next_sw != (osm_switch_t *) cl_qmap_end(&p_subn->sw_guid_tbl)) {
  p_sw = p_next_sw;
  p_next_sw = (osm_switch_t *) cl_qmap_next(&p_sw->map_item);

  osm_lash_process_switch(p_lash, p_sw);
 }
}
