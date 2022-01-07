
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int buf ;


 int * ctrl_conn ;
 int hostapd_cli_msg_cb ;
 int printf (char*,...) ;
 int strlen (char const*) ;
 int wpa_ctrl_request (struct wpa_ctrl*,char const*,int ,char*,size_t*,int ) ;

__attribute__((used)) static int _wpa_ctrl_command(struct wpa_ctrl *ctrl, const char *cmd, int print)
{
 char buf[4096];
 size_t len;
 int ret;

 if (ctrl_conn == ((void*)0)) {
  printf("Not connected to hostapd - command dropped.\n");
  return -1;
 }
 len = sizeof(buf) - 1;
 ret = wpa_ctrl_request(ctrl, cmd, strlen(cmd), buf, &len,
          hostapd_cli_msg_cb);
 if (ret == -2) {
  printf("'%s' command timed out.\n", cmd);
  return -2;
 } else if (ret < 0) {
  printf("'%s' command failed.\n", cmd);
  return -1;
 }
 if (print) {
  buf[len] = '\0';
  printf("%s", buf);
 }
 return 0;
}
