
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int * obj; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Needed_Entry ;


 int dlclose_locked (int *,int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
free_needed_filtees(Needed_Entry *n, RtldLockState *lockstate)
{
    Needed_Entry *needed, *needed1;

    for (needed = n; needed != ((void*)0); needed = needed->next) {
 if (needed->obj != ((void*)0)) {
     dlclose_locked(needed->obj, lockstate);
     needed->obj = ((void*)0);
 }
    }
    for (needed = n; needed != ((void*)0); needed = needed1) {
 needed1 = needed->next;
 free(needed);
    }
}
