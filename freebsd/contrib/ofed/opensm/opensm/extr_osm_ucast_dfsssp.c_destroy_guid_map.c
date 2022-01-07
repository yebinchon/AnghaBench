
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int item; } ;
typedef TYPE_1__ name_map_item_t ;
typedef int cl_qmap_t ;


 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_head (int *) ;
 scalar_t__ cl_qmap_next (int *) ;
 int cl_qmap_remove_all (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void destroy_guid_map(cl_qmap_t * guid_tbl)
{
 name_map_item_t *p_guid = ((void*)0), *p_next_guid = ((void*)0);

 p_next_guid = (name_map_item_t *) cl_qmap_head(guid_tbl);
 while (p_next_guid != (name_map_item_t *) cl_qmap_end(guid_tbl)) {
  p_guid = p_next_guid;
  p_next_guid = (name_map_item_t *) cl_qmap_next(&p_guid->item);
  free(p_guid);
 }
 cl_qmap_remove_all(guid_tbl);
}
