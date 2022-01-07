
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CONFIG_HOSTAPD_CLI_HISTORY_DIR ;
 int cli_txt_list_flush (int *) ;
 int edit_deinit (char*,int *) ;
 int edit_init (int ,int ,int ,int *,char*,int *) ;
 int eloop_cancel_timeout (int ,int *,int *) ;
 int eloop_register_signal_terminate (int ,int *) ;
 int eloop_register_timeout (int ,int ,int ,int *,int *) ;
 int eloop_run () ;
 char* getenv (char*) ;
 int hostapd_cli_edit_cmd_cb ;
 int hostapd_cli_edit_completion_cb ;
 int hostapd_cli_edit_eof_cb ;
 int hostapd_cli_eloop_terminate ;
 int hostapd_cli_ping ;
 int os_free (char*) ;
 char* os_malloc (int) ;
 int os_snprintf (char*,int,char*,char*,char const*) ;
 int os_strlen (char const*) ;
 int ping_interval ;
 int printf (char*) ;
 int stations ;

__attribute__((used)) static void hostapd_cli_interactive(void)
{
 char *hfile = ((void*)0);
 char *home;

 printf("\nInteractive mode\n\n");




 home = getenv("HOME");

 if (home) {
  const char *fname = ".hostapd_cli_history";
  int hfile_len = os_strlen(home) + 1 + os_strlen(fname) + 1;
  hfile = os_malloc(hfile_len);
  if (hfile)
   os_snprintf(hfile, hfile_len, "%s/%s", home, fname);
 }

 eloop_register_signal_terminate(hostapd_cli_eloop_terminate, ((void*)0));
 edit_init(hostapd_cli_edit_cmd_cb, hostapd_cli_edit_eof_cb,
    hostapd_cli_edit_completion_cb, ((void*)0), hfile, ((void*)0));
 eloop_register_timeout(ping_interval, 0, hostapd_cli_ping, ((void*)0), ((void*)0));

 eloop_run();

 cli_txt_list_flush(&stations);
 edit_deinit(hfile, ((void*)0));
 os_free(hfile);
 eloop_cancel_timeout(hostapd_cli_ping, ((void*)0), ((void*)0));
}
