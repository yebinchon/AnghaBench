
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int nn_map_t ;
struct TYPE_2__ {int name; } ;
typedef TYPE_1__ name_map_item_t ;


 scalar_t__ cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_get (int *,int ) ;
 int clean_nodedesc (char*) ;
 char* strdup (int ) ;

char *remap_node_name(nn_map_t * map, uint64_t target_guid, char *nodedesc)
{
 char *rc = ((void*)0);
 name_map_item_t *item = ((void*)0);

 if (!map)
  goto done;

 item = (name_map_item_t *) cl_qmap_get(map, target_guid);
 if (item != (name_map_item_t *) cl_qmap_end(map))
  rc = strdup(item->name);

done:
 if (rc == ((void*)0))
  rc = strdup(clean_nodedesc(nodedesc));
 return (rc);
}
