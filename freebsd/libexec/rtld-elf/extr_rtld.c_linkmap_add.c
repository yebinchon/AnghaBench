
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct link_map {struct link_map* l_next; struct link_map* l_prev; int l_offs; int l_ld; int l_addr; int l_name; } ;
struct TYPE_7__ {struct link_map linkmap; } ;
struct TYPE_6__ {struct link_map* r_map; } ;
struct TYPE_5__ {int relocbase; struct link_map linkmap; int dynamic; int mapbase; int path; } ;
typedef TYPE_1__ Obj_Entry ;


 TYPE_3__ obj_rtld ;
 TYPE_2__ r_debug ;

__attribute__((used)) static void
linkmap_add(Obj_Entry *obj)
{
    struct link_map *l = &obj->linkmap;
    struct link_map *prev;

    obj->linkmap.l_name = obj->path;
    obj->linkmap.l_addr = obj->mapbase;
    obj->linkmap.l_ld = obj->dynamic;





    if (r_debug.r_map == ((void*)0)) {
 r_debug.r_map = l;
 return;
    }





    for (prev = r_debug.r_map;
      prev->l_next != ((void*)0) && prev->l_next != &obj_rtld.linkmap;
      prev = prev->l_next)
 ;


    l->l_prev = prev;
    l->l_next = prev->l_next;
    if (l->l_next != ((void*)0))
 l->l_next->l_prev = l;
    prev->l_next = l;
}
