
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int XmapVal ;
struct TYPE_5__ {int type; int fun; int name; } ;
struct TYPE_4__ {int buf; } ;
typedef TYPE_1__ CStr ;


 int A_K_NKEYS ;
 scalar_t__ Strcmp (int ,int ) ;
 TYPE_2__* arrow ;

int
SetArrowKeys(const CStr *name, XmapVal *fun, int type)
{
    int i;
    for (i = 0; i < A_K_NKEYS; i++)
 if (Strcmp(name->buf, arrow[i].name) == 0) {
     arrow[i].fun = *fun;
     arrow[i].type = type;
     return 0;
 }
    return -1;
}
