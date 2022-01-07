
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * priv; int map_item; } ;
typedef TYPE_2__ osm_switch_t ;
struct TYPE_9__ {int sw_guid_tbl; } ;
typedef TYPE_3__ osm_subn_t ;
struct TYPE_10__ {int num_switches; scalar_t__* switches; TYPE_1__* p_osm; } ;
typedef TYPE_4__ lash_t ;
struct TYPE_7__ {TYPE_3__ subn; } ;


 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_head (int *) ;
 scalar_t__ cl_qmap_next (int *) ;
 int free (scalar_t__*) ;
 int switch_delete (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static void lash_cleanup(lash_t * p_lash)
{
 osm_subn_t *p_subn = &p_lash->p_osm->subn;
 osm_switch_t *p_next_sw, *p_sw;


 p_next_sw = (osm_switch_t *) cl_qmap_head(&p_subn->sw_guid_tbl);
 while (p_next_sw != (osm_switch_t *) cl_qmap_end(&p_subn->sw_guid_tbl)) {
  p_sw = p_next_sw;
  p_next_sw = (osm_switch_t *) cl_qmap_next(&p_sw->map_item);
  p_sw->priv = ((void*)0);
 }

 if (p_lash->switches) {
  unsigned id;
  for (id = 0; ((int)id) < p_lash->num_switches; id++)
   if (p_lash->switches[id])
    switch_delete(p_lash, p_lash->switches[id]);
  free(p_lash->switches);
 }
 p_lash->switches = ((void*)0);
}
