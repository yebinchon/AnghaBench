
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ name; TYPE_1__* obj; struct TYPE_8__* next; } ;
struct TYPE_7__ {scalar_t__ strtab; } ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Needed_Entry ;


 int RTLD_LO_FILTEES ;
 int RTLD_LO_NOLOAD ;
 int ld_tracing ;
 TYPE_1__* load_object (scalar_t__,int,TYPE_1__*,int) ;

__attribute__((used)) static int
process_needed(Obj_Entry *obj, Needed_Entry *needed, int flags)
{
    Obj_Entry *obj1;

    for (; needed != ((void*)0); needed = needed->next) {
 obj1 = needed->obj = load_object(obj->strtab + needed->name, -1, obj,
   flags & ~RTLD_LO_NOLOAD);
 if (obj1 == ((void*)0) && !ld_tracing && (flags & RTLD_LO_FILTEES) == 0)
     return (-1);
    }
    return (0);
}
