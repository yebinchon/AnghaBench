
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Obj_Entry ;


 int dump_obj_relocations (int *) ;
 int * globallist_curr (int *) ;
 int * globallist_next (int *) ;

void
dump_relocations (Obj_Entry *obj0)
{
    Obj_Entry *obj;

    for (obj = globallist_curr(obj0); obj != ((void*)0);
      obj = globallist_next(obj)) {
        dump_obj_relocations(obj);
    }
}
