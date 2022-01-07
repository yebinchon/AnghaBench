
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_switches; scalar_t__* switches; } ;
typedef TYPE_1__ lash_t ;


 int osm_mesh_node_delete (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void delete_mesh_switches(lash_t *p_lash)
{
 if (p_lash->switches) {
  unsigned id;
  for (id = 0; ((int)id) < p_lash->num_switches; id++)
   if (p_lash->switches[id])
    osm_mesh_node_delete(p_lash,
           p_lash->switches[id]);
 }
}
