
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_9__ {int * str; } ;
typedef TYPE_1__ keymacro_value_t ;
struct TYPE_10__ {scalar_t__ const ch; int type; struct TYPE_10__* next; TYPE_1__ val; struct TYPE_10__* sibling; } ;
typedef TYPE_2__ keymacro_node_t ;
struct TYPE_11__ {int el_errfile; } ;
typedef TYPE_3__ EditLine ;


 int EL_ABORT (int ) ;



 int el_free (int *) ;
 void* node__get (scalar_t__ const) ;
 int node__put (TYPE_3__*,TYPE_2__*) ;
 int * wcsdup (int *) ;

__attribute__((used)) static int
node__try(EditLine *el, keymacro_node_t *ptr, const wchar_t *str,
    keymacro_value_t *val, int ntype)
{

 if (ptr->ch != *str) {
  keymacro_node_t *xm;

  for (xm = ptr; xm->sibling != ((void*)0); xm = xm->sibling)
   if (xm->sibling->ch == *str)
    break;
  if (xm->sibling == ((void*)0))
   xm->sibling = node__get(*str);
  ptr = xm->sibling;
 }
 if (*++str == '\0') {

  if (ptr->next != ((void*)0)) {
   node__put(el, ptr->next);

   ptr->next = ((void*)0);
  }
  switch (ptr->type) {
  case 130:
  case 129:
   break;
  case 128:
   if (ptr->val.str)
    el_free(ptr->val.str);
   break;
  default:
   EL_ABORT((el->el_errfile, "Bad XK_ type %d\n",
       ptr->type));
   break;
  }

  switch (ptr->type = ntype) {
  case 130:
   ptr->val = *val;
   break;
  case 128:
   if ((ptr->val.str = wcsdup(val->str)) == ((void*)0))
    return -1;
   break;
  default:
   EL_ABORT((el->el_errfile, "Bad XK_ type %d\n", ntype));
   break;
  }
 } else {

  if (ptr->next == ((void*)0))
   ptr->next = node__get(*str);
  (void) node__try(el, ptr->next, str, val, ntype);
 }
 return 0;
}
