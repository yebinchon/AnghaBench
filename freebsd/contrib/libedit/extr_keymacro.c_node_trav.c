
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_5__ {int * str; } ;
typedef TYPE_1__ keymacro_value_t ;
struct TYPE_6__ {char ch; scalar_t__ type; struct TYPE_6__* sibling; TYPE_1__ val; struct TYPE_6__* next; } ;
typedef TYPE_2__ keymacro_node_t ;
typedef int EditLine ;


 scalar_t__ XK_CMD ;
 int XK_NOD ;
 int XK_STR ;
 int el_wgetc (int *,char*) ;

__attribute__((used)) static int
node_trav(EditLine *el, keymacro_node_t *ptr, wchar_t *ch,
    keymacro_value_t *val)
{

 if (ptr->ch == *ch) {

  if (ptr->next) {

   if (el_wgetc(el, ch) != 1)
    return XK_NOD;
   return node_trav(el, ptr->next, ch, val);
  } else {
   *val = ptr->val;
   if (ptr->type != XK_CMD)
    *ch = '\0';
   return ptr->type;
  }
 } else {

  if (ptr->sibling) {

   return node_trav(el, ptr->sibling, ch, val);
  } else {

   val->str = ((void*)0);
   return XK_STR;
  }
 }
}
