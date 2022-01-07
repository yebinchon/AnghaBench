
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct link_map {TYPE_2__* l_prev; TYPE_1__* l_next; } ;
struct TYPE_9__ {TYPE_1__* r_map; } ;
struct TYPE_8__ {struct link_map linkmap; } ;
struct TYPE_7__ {TYPE_1__* l_next; } ;
struct TYPE_6__ {TYPE_2__* l_prev; } ;
typedef TYPE_3__ Obj_Entry ;


 TYPE_4__ r_debug ;

__attribute__((used)) static void
linkmap_delete(Obj_Entry *obj)
{
    struct link_map *l = &obj->linkmap;

    if (l->l_prev == ((void*)0)) {
 if ((r_debug.r_map = l->l_next) != ((void*)0))
     l->l_next->l_prev = ((void*)0);
 return;
    }

    if ((l->l_prev->l_next = l->l_next) != ((void*)0))
 l->l_next->l_prev = l->l_prev;
}
