
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int fun; int name; } ;
struct TYPE_4__ {scalar_t__ len; int buf; } ;
typedef TYPE_1__ CStr ;


 int A_K_NKEYS ;
 scalar_t__ Strcmp (int ,int ) ;
 scalar_t__ XK_NOD ;
 TYPE_2__* arrow ;
 int printOne (int ,int *,scalar_t__) ;

void
PrintArrowKeys(const CStr *name)
{
    int i;

    for (i = 0; i < A_K_NKEYS; i++)
 if (name->len == 0 || Strcmp(name->buf, arrow[i].name) == 0)
     if (arrow[i].type != XK_NOD)
  printOne(arrow[i].name, &arrow[i].fun, arrow[i].type);
}
