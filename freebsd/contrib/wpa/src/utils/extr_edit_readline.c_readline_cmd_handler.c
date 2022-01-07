
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int line; } ;
typedef TYPE_1__ HIST_ENTRY ;


 int add_history (char*) ;
 int edit_cb_ctx ;
 int edit_cmd_cb (int ,char*) ;
 int edit_eof_cb (int ) ;
 scalar_t__ next_history () ;
 scalar_t__ os_strcmp (char*,int ) ;
 TYPE_1__* previous_history () ;
 int trunc_nl (char*) ;

__attribute__((used)) static void readline_cmd_handler(char *cmd)
{
 if (cmd && *cmd) {
  HIST_ENTRY *h;
  while (next_history())
   ;
  h = previous_history();
  if (h == ((void*)0) || os_strcmp(cmd, h->line) != 0)
   add_history(cmd);
  next_history();
 }
 if (cmd == ((void*)0)) {
  edit_eof_cb(edit_cb_ctx);
  return;
 }
 trunc_nl(cmd);
 edit_cmd_cb(edit_cb_ctx, cmd);
}
