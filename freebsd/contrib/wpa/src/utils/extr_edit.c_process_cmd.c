
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cmdbuf ;
 size_t cmdbuf_len ;
 scalar_t__ cmdbuf_pos ;
 scalar_t__ currbuf_valid ;
 int edit_cb_ctx ;
 int edit_cmd_cb (int ,char*) ;
 int fflush (int ) ;
 int history_add (char*) ;
 int printf (char*,...) ;
 char* ps2 ;
 int stdout ;

__attribute__((used)) static void process_cmd(void)
{
 currbuf_valid = 0;
 if (cmdbuf_len == 0) {
  printf("\n%s> ", ps2 ? ps2 : "");
  fflush(stdout);
  return;
 }
 printf("\n");
 cmdbuf[cmdbuf_len] = '\0';
 history_add(cmdbuf);
 cmdbuf_pos = 0;
 cmdbuf_len = 0;
 edit_cmd_cb(edit_cb_ctx, cmdbuf);
 printf("%s> ", ps2 ? ps2 : "");
 fflush(stdout);
}
