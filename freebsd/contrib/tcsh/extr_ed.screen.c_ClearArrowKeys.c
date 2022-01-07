
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; int name; } ;
struct TYPE_4__ {int buf; } ;
typedef TYPE_1__ CStr ;


 int A_K_NKEYS ;
 scalar_t__ Strcmp (int ,int ) ;
 int XK_NOD ;
 TYPE_2__* arrow ;

int
ClearArrowKeys(const CStr *name)
{
    int i;
    for (i = 0; i < A_K_NKEYS; i++)
 if (Strcmp(name->buf, arrow[i].name) == 0) {
     arrow[i].type = XK_NOD;
     return 0;
 }
    return -1;
}
