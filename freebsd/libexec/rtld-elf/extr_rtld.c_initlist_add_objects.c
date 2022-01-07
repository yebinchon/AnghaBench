
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int init_scanned; scalar_t__ fini; scalar_t__ fini_array; int on_fini_list; int * needed_aux_filtees; int * needed_filtees; int * needed; scalar_t__ init_done; } ;
typedef int Objlist ;
typedef TYPE_1__ Obj_Entry ;
typedef scalar_t__ Elf_Addr ;


 TYPE_1__* globallist_next (TYPE_1__*) ;
 int initlist_add_neededs (int *,int *) ;
 int list_fini ;
 int objlist_push_head (int *,TYPE_1__*) ;
 int objlist_push_tail (int *,TYPE_1__*) ;

__attribute__((used)) static void
initlist_add_objects(Obj_Entry *obj, Obj_Entry *tail, Objlist *list)
{
    Obj_Entry *nobj;

    if (obj->init_scanned || obj->init_done)
 return;
    obj->init_scanned = 1;


    nobj = globallist_next(obj);
    if (nobj != ((void*)0) && obj != tail)
 initlist_add_objects(nobj, tail, list);


    if (obj->needed != ((void*)0))
 initlist_add_neededs(obj->needed, list);
    if (obj->needed_filtees != ((void*)0))
 initlist_add_neededs(obj->needed_filtees, list);
    if (obj->needed_aux_filtees != ((void*)0))
 initlist_add_neededs(obj->needed_aux_filtees, list);


    objlist_push_tail(list, obj);


    if ((obj->fini != (Elf_Addr)((void*)0) || obj->fini_array != (Elf_Addr)((void*)0))
      && !obj->on_fini_list) {
 objlist_push_head(&list_fini, obj);
 obj->on_fini_list = 1;
    }
}
