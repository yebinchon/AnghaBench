
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int needed; scalar_t__ marker; } ;
typedef TYPE_1__ Obj_Entry ;


 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int next ;
 int process_needed (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
load_needed_objects(Obj_Entry *first, int flags)
{
    Obj_Entry *obj;

    for (obj = first; obj != ((void*)0); obj = TAILQ_NEXT(obj, next)) {
 if (obj->marker)
     continue;
 if (process_needed(obj, obj->needed, flags) == -1)
     return (-1);
    }
    return (0);
}
