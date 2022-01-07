
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union uni_msgall {int hdr; } ;
typedef int u_int ;
struct unicx {scalar_t__ multiline; int indent; } ;
struct TYPE_2__ {int (* print ) (union uni_msgall const*,struct unicx*) ;int name; } ;


 int stub1 (union uni_msgall const*,struct unicx*) ;
 int uni_entry (char*,struct unicx*) ;
 TYPE_1__** uni_msgtable ;
 int uni_print_eol (struct unicx*) ;
 int uni_print_msghdr_internal (int *,struct unicx*) ;
 int uni_printf (struct unicx*,char*,...) ;

__attribute__((used)) static void
uni_print_msg_internal(u_int mtype, const union uni_msgall *msg,
    struct unicx *cx)
{

 uni_entry("mtype", cx);
 if (mtype >= 256 || uni_msgtable[mtype] == ((void*)0)) {
  uni_printf(cx, "0x%02x(ERROR)", mtype);
 } else {
  uni_printf(cx, "%s", uni_msgtable[mtype]->name);
  uni_print_msghdr_internal(&msg->hdr, cx);
  cx->indent++;
  uni_print_eol(cx);
  (*uni_msgtable[mtype]->print)(msg, cx);
  cx->indent--;
 }

 if(cx->multiline == 0)
  uni_printf(cx, "\n");
}
