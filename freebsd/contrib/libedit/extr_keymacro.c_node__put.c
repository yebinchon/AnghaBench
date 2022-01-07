
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* str; } ;
struct TYPE_8__ {int type; TYPE_1__ val; struct TYPE_8__* sibling; struct TYPE_8__* next; } ;
typedef TYPE_2__ keymacro_node_t ;
struct TYPE_9__ {int el_errfile; } ;
typedef TYPE_3__ EditLine ;


 int EL_ABORT (int ) ;



 int el_free (TYPE_2__*) ;

__attribute__((used)) static void
node__put(EditLine *el, keymacro_node_t *ptr)
{
 if (ptr == ((void*)0))
  return;

 if (ptr->next != ((void*)0)) {
  node__put(el, ptr->next);
  ptr->next = ((void*)0);
 }
 node__put(el, ptr->sibling);

 switch (ptr->type) {
 case 130:
 case 129:
  break;
 case 128:
  if (ptr->val.str != ((void*)0))
   el_free(ptr->val.str);
  break;
 default:
  EL_ABORT((el->el_errfile, "Bad XK_ type %d\n", ptr->type));
  break;
 }
 el_free(ptr);
}
