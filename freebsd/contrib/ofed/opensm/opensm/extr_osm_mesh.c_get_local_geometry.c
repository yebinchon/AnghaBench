
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int osm_log_t ;
typedef int mesh_t ;
struct TYPE_13__ {int num_switches; TYPE_3__** switches; TYPE_1__* p_osm; } ;
typedef TYPE_4__ lash_t ;
struct TYPE_12__ {TYPE_2__* node; } ;
struct TYPE_11__ {scalar_t__ num_links; scalar_t__ type; } ;
struct TYPE_10__ {int log; } ;


 scalar_t__ MAX_DEGREE ;
 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_EXIT (int *) ;
 int classify_mesh_type (TYPE_4__*,int) ;
 int classify_switch (TYPE_4__*,int *,int) ;
 scalar_t__ get_switch_metric (TYPE_4__*,int) ;
 int remove_edges (TYPE_4__*) ;

__attribute__((used)) static int get_local_geometry(lash_t *p_lash, mesh_t *mesh)
{
 osm_log_t *p_log = &p_lash->p_osm->log;
 int sw;
 int status = 0;

 OSM_LOG_ENTER(p_log);

 for (sw = 0; sw < p_lash->num_switches; sw++) {




  if (p_lash->switches[sw]->node->num_links > MAX_DEGREE)
   continue;

  if (get_switch_metric(p_lash, sw)) {
   status = -1;
   goto Exit;
  }
  classify_mesh_type(p_lash, sw);
 }

 remove_edges(p_lash);

 for (sw = 0; sw < p_lash->num_switches; sw++) {
  if (p_lash->switches[sw]->node->type < 0)
   continue;
  classify_switch(p_lash, mesh, sw);
 }

Exit:
 OSM_LOG_EXIT(p_log);
 return status;
}
