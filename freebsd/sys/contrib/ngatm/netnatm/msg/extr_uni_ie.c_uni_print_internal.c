
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct unicx {scalar_t__ multiline; int indent; } ;
struct TYPE_4__ {int hdr; } ;
struct uni_all {int mtype; TYPE_2__ u; } ;
struct TYPE_3__ {int (* print ) (TYPE_2__*,struct unicx*) ;int name; } ;


 int stub1 (TYPE_2__*,struct unicx*) ;
 int uni_entry (char*,struct unicx*) ;
 TYPE_1__** uni_msgtable ;
 int uni_print_eol (struct unicx*) ;
 int uni_print_msghdr_internal (int *,struct unicx*) ;
 int uni_printf (struct unicx*,char*,...) ;

__attribute__((used)) static void
uni_print_internal(const struct uni_all *msg, struct unicx *cx)
{
 uni_entry("mtype", cx);
 if(msg->mtype >= 256 || uni_msgtable[msg->mtype] == ((void*)0)) {
  uni_printf(cx, "0x%02x(ERROR)", msg->mtype);
 } else {
  uni_printf(cx, "%s", uni_msgtable[msg->mtype]->name);
  uni_print_msghdr_internal(&msg->u.hdr, cx);
  cx->indent++;
  uni_print_eol(cx);
  (*uni_msgtable[msg->mtype]->print)(&msg->u, cx);
  cx->indent--;
 }

 if(cx->multiline == 0)
  uni_printf(cx, "\n");
}
