
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctrl_conn ;
 int max_args ;
 int tokenize_cmd (char*,char**) ;
 int wpa_request (int ,int,char**) ;

__attribute__((used)) static void hostapd_cli_edit_cmd_cb(void *ctx, char *cmd)
{
 char *argv[max_args];
 int argc;
 argc = tokenize_cmd(cmd, argv);
 if (argc)
  wpa_request(ctrl_conn, argc, argv);
}
