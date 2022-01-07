
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int guid; int name; } ;
typedef TYPE_1__ name_map_item_t ;
typedef int cl_qmap_t ;
typedef int cl_map_item_t ;


 int cl_qmap_insert (int *,int ,int *) ;
 TYPE_1__* malloc (int) ;
 int strdup (char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int map_name(void *cxt, uint64_t guid, char *p)
{
 cl_qmap_t *map = cxt;
 name_map_item_t *item;

 p = strtok(p, "\"#");
 if (!p)
  return 0;

 item = malloc(sizeof(*item));
 if (!item)
  return -1;
 item->guid = guid;
 item->name = strdup(p);
 cl_qmap_insert(map, item->guid, (cl_map_item_t *) item);
 return 0;
}
