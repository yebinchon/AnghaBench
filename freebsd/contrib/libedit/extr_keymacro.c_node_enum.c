
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_8__ {struct TYPE_8__* sibling; struct TYPE_8__* next; int type; int val; int ch; } ;
typedef TYPE_2__ keymacro_node_t ;
struct TYPE_7__ {char* buf; } ;
struct TYPE_9__ {TYPE_1__ el_keymacro; int el_errfile; } ;
typedef TYPE_3__ EditLine ;


 int KEY_BUFSIZ ;
 scalar_t__ ct_visual_char (char*,int,int ) ;
 int fprintf (int ,char*,...) ;
 int keymacro_kprint (TYPE_3__*,char*,int *,int ) ;

__attribute__((used)) static int
node_enum(EditLine *el, keymacro_node_t *ptr, size_t cnt)
{
        ssize_t used;

 if (cnt >= KEY_BUFSIZ - 5) {
  el->el_keymacro.buf[++cnt] = '"';
  el->el_keymacro.buf[++cnt] = '\0';
  (void) fprintf(el->el_errfile,
      "Some extended keys too long for internal print buffer");
  (void) fprintf(el->el_errfile, " \"%ls...\"\n",
      el->el_keymacro.buf);
  return 0;
 }
 if (ptr == ((void*)0)) {




  return -1;
 }

        used = ct_visual_char(el->el_keymacro.buf + cnt, KEY_BUFSIZ - cnt,
     ptr->ch);
 if (ptr->next == ((void*)0)) {

  el->el_keymacro.buf[cnt + (size_t)used ] = '"';
  el->el_keymacro.buf[cnt + (size_t)used + 1] = '\0';
  keymacro_kprint(el, el->el_keymacro.buf, &ptr->val, ptr->type);
 } else
  (void) node_enum(el, ptr->next, cnt + (size_t)used);


 if (ptr->sibling)
  (void) node_enum(el, ptr->sibling, cnt);
 return 0;
}
