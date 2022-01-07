
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int item; int guid; int * name; } ;
typedef TYPE_1__ name_map_item_t ;
typedef int cl_qmap_t ;


 int cl_hton64 (int ) ;
 scalar_t__ cl_qmap_insert (int *,int ,int *) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static int add_guid_to_map(void * cxt, uint64_t guid, char * p)
{
 cl_qmap_t *map = cxt;
 name_map_item_t *item;
 name_map_item_t *inserted_item;

 item = malloc(sizeof(*item));
 if (!item)
  return -1;

 item->guid = cl_hton64(guid);
 item->name = ((void*)0);
 inserted_item = (name_map_item_t *) cl_qmap_insert(map, item->guid, &item->item);
 if (inserted_item != item)
                free(item);

 return 0;
}
