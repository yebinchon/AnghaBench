
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_4__ {scalar_t__ const ch; struct TYPE_4__* sibling; struct TYPE_4__* next; } ;
typedef TYPE_1__ keymacro_node_t ;
typedef int EditLine ;


 int node__put (int *,TYPE_1__*) ;

__attribute__((used)) static int
node__delete(EditLine *el, keymacro_node_t **inptr, const wchar_t *str)
{
 keymacro_node_t *ptr;
 keymacro_node_t *prev_ptr = ((void*)0);

 ptr = *inptr;

 if (ptr->ch != *str) {
  keymacro_node_t *xm;

  for (xm = ptr; xm->sibling != ((void*)0); xm = xm->sibling)
   if (xm->sibling->ch == *str)
    break;
  if (xm->sibling == ((void*)0))
   return 0;
  prev_ptr = xm;
  ptr = xm->sibling;
 }
 if (*++str == '\0') {

  if (prev_ptr == ((void*)0))
   *inptr = ptr->sibling;
  else
   prev_ptr->sibling = ptr->sibling;
  ptr->sibling = ((void*)0);
  node__put(el, ptr);
  return 1;
 } else if (ptr->next != ((void*)0) &&
     node__delete(el, &ptr->next, str) == 1) {
  if (ptr->next != ((void*)0))
   return 0;
  if (prev_ptr == ((void*)0))
   *inptr = ptr->sibling;
  else
   prev_ptr->sibling = ptr->sibling;
  ptr->sibling = ((void*)0);
  node__put(el, ptr);
  return 1;
 } else {
  return 0;
 }
}
