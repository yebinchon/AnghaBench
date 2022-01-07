
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * obj; struct TYPE_3__* next; } ;
typedef int Objlist ;
typedef TYPE_1__ Needed_Entry ;


 int initlist_add_objects (int *,int *,int *) ;

__attribute__((used)) static void
initlist_add_neededs(Needed_Entry *needed, Objlist *list)
{

    if (needed->next != ((void*)0))
 initlist_add_neededs(needed->next, list);


    if (needed->obj != ((void*)0))
 initlist_add_objects(needed->obj, needed->obj, list);
}
