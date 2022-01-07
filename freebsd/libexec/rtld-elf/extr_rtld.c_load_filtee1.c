
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ name; int obj; struct TYPE_7__* next; } ;
struct TYPE_6__ {scalar_t__ z_loadfltr; scalar_t__ strtab; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Needed_Entry ;


 int RTLD_LAZY ;
 int RTLD_LOCAL ;
 int RTLD_NOW ;
 int dlopen_object (scalar_t__,int,TYPE_1__*,int,int,int *) ;
 scalar_t__ ld_loadfltr ;

__attribute__((used)) static void
load_filtee1(Obj_Entry *obj, Needed_Entry *needed, int flags,
    RtldLockState *lockstate)
{

    for (; needed != ((void*)0); needed = needed->next) {
 needed->obj = dlopen_object(obj->strtab + needed->name, -1, obj,
   flags, ((ld_loadfltr || obj->z_loadfltr) ? RTLD_NOW : RTLD_LAZY) |
   RTLD_LOCAL, lockstate);
    }
}
