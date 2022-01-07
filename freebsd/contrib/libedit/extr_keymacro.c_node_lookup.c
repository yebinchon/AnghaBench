
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef int ssize_t ;
struct TYPE_10__ {scalar_t__ const ch; struct TYPE_10__* sibling; int type; int val; struct TYPE_10__* next; } ;
typedef TYPE_2__ keymacro_node_t ;
struct TYPE_9__ {char* buf; } ;
struct TYPE_11__ {TYPE_1__ el_keymacro; } ;
typedef TYPE_3__ EditLine ;


 scalar_t__ KEY_BUFSIZ ;
 int ct_visual_char (char*,scalar_t__,scalar_t__ const) ;
 int keymacro_kprint (TYPE_3__*,char*,int *,int ) ;
 int node_enum (TYPE_3__*,TYPE_2__*,size_t) ;

__attribute__((used)) static int
node_lookup(EditLine *el, const wchar_t *str, keymacro_node_t *ptr,
    size_t cnt)
{
 ssize_t used;

 if (ptr == ((void*)0))
  return -1;

 if (!str || *str == 0) {

  (void) node_enum(el, ptr, cnt);
  return 0;
 } else {

  if (ptr->ch == *str) {

   used = ct_visual_char(el->el_keymacro.buf + cnt,
       KEY_BUFSIZ - cnt, ptr->ch);
   if (used == -1)
    return -1;
   if (ptr->next != ((void*)0))

    return (node_lookup(el, str + 1, ptr->next,
        (size_t)used + cnt));
   else {

    if (str[1] == 0) {
     size_t px = cnt + (size_t)used;
     el->el_keymacro.buf[px] = '"';
     el->el_keymacro.buf[px + 1] = '\0';
     keymacro_kprint(el, el->el_keymacro.buf,
         &ptr->val, ptr->type);
     return 0;
    } else
     return -1;

   }
  } else {

   if (ptr->sibling)
    return (node_lookup(el, str, ptr->sibling,
        cnt));
   else
    return -1;
  }
 }
}
