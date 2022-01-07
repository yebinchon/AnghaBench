
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t num_hca; TYPE_1__* used_link; } ;
typedef TYPE_2__ vertex_t ;
typedef size_t uint32_t ;
struct TYPE_8__ {int p_log; } ;
typedef TYPE_3__ osm_ucast_mgr_t ;
struct TYPE_6__ {size_t from; int weight; } ;


 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_EXIT (int ) ;

__attribute__((used)) static void update_weights(osm_ucast_mgr_t * p_mgr, vertex_t * adj_list,
      uint32_t adj_list_size)
{
 uint32_t i = 0, j = 0;
 uint32_t additional_weight = 0;

 OSM_LOG_ENTER(p_mgr->p_log);

 for (i = 1; i < adj_list_size; i++) {

  if (!(adj_list[i].used_link))
   continue;
  additional_weight = adj_list[i].num_hca;

  j = i;
  while (adj_list[j].used_link) {

   adj_list[j].used_link->weight += additional_weight;

   j = adj_list[j].used_link->from;
  }
 }

 OSM_LOG_EXIT(p_mgr->p_log);
}
