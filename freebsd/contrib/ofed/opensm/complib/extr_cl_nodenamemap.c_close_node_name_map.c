
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* name; int guid; } ;
typedef TYPE_1__ nn_map_t ;
typedef TYPE_1__ name_map_item_t ;


 scalar_t__ cl_qmap_end (TYPE_1__*) ;
 scalar_t__ cl_qmap_head (TYPE_1__*) ;
 scalar_t__ cl_qmap_remove (TYPE_1__*,int ) ;
 int free (TYPE_1__*) ;

void close_node_name_map(nn_map_t * map)
{
 name_map_item_t *item = ((void*)0);

 if (!map)
  return;

 item = (name_map_item_t *) cl_qmap_head(map);
 while (item != (name_map_item_t *) cl_qmap_end(map)) {
  item = (name_map_item_t *) cl_qmap_remove(map, item->guid);
  free(item->name);
  free(item);
  item = (name_map_item_t *) cl_qmap_head(map);
 }
 free(map);
}
