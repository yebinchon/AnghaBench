
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wint_t ;
struct TYPE_5__ {int * str; } ;
struct TYPE_6__ {int * sibling; int * next; TYPE_1__ val; int type; int ch; } ;
typedef TYPE_2__ keymacro_node_t ;


 int XK_NOD ;
 TYPE_2__* el_malloc (int) ;

__attribute__((used)) static keymacro_node_t *
node__get(wint_t ch)
{
 keymacro_node_t *ptr;

 ptr = el_malloc(sizeof(*ptr));
 if (ptr == ((void*)0))
  return ((void*)0);
 ptr->ch = ch;
 ptr->type = XK_NOD;
 ptr->val.str = ((void*)0);
 ptr->next = ((void*)0);
 ptr->sibling = ((void*)0);
 return ptr;
}
