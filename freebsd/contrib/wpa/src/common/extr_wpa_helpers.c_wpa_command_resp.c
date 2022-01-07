
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 int printf (char*,...) ;
 int strlen (char const*) ;
 int wpa_ctrl_close (struct wpa_ctrl*) ;
 scalar_t__ wpa_ctrl_request (struct wpa_ctrl*,char const*,int ,char*,size_t*,int *) ;
 struct wpa_ctrl* wpa_open_ctrl (char const*) ;

int wpa_command_resp(const char *ifname, const char *cmd,
       char *resp, size_t resp_size)
{
 struct wpa_ctrl *ctrl;
 size_t len;

 printf("wpa_command(ifname='%s', cmd='%s')\n", ifname, cmd);
 ctrl = wpa_open_ctrl(ifname);
 if (ctrl == ((void*)0))
  return -1;
 len = resp_size;
 if (wpa_ctrl_request(ctrl, cmd, strlen(cmd), resp, &len, ((void*)0)) < 0) {
  printf("wpa_command: wpa_ctrl_request failed\n");
  wpa_ctrl_close(ctrl);
  return -1;
 }
 wpa_ctrl_close(ctrl);
 resp[len] = '\0';
 return 0;
}
