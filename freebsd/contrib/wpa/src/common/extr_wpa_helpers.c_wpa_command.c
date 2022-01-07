
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int buf ;


 int printf (char*,...) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int wpa_ctrl_close (struct wpa_ctrl*) ;
 scalar_t__ wpa_ctrl_request (struct wpa_ctrl*,char const*,int ,char*,size_t*,int *) ;
 struct wpa_ctrl* wpa_open_ctrl (char const*) ;

int wpa_command(const char *ifname, const char *cmd)
{
 struct wpa_ctrl *ctrl;
 char buf[128];
 size_t len;

 printf("wpa_command(ifname='%s', cmd='%s')\n", ifname, cmd);
 ctrl = wpa_open_ctrl(ifname);
 if (ctrl == ((void*)0))
  return -1;
 len = sizeof(buf);
 if (wpa_ctrl_request(ctrl, cmd, strlen(cmd), buf, &len, ((void*)0)) < 0) {
  printf("wpa_command: wpa_ctrl_request failed\n");
  wpa_ctrl_close(ctrl);
  return -1;
 }
 wpa_ctrl_close(ctrl);
 buf[len] = '\0';
 if (strncmp(buf, "FAIL", 4) == 0) {
  printf("wpa_command: Command failed (FAIL received)\n");
  return -1;
 }
 return 0;
}
