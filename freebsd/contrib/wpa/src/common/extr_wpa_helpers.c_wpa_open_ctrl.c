
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int buf ;


 int os_snprintf (char*,int,char*,int ,char const*) ;
 int printf (char*,char*) ;
 struct wpa_ctrl* wpa_ctrl_open (char*) ;
 int wpas_ctrl_path ;

__attribute__((used)) static struct wpa_ctrl * wpa_open_ctrl(const char *ifname)
{
 char buf[128];
 struct wpa_ctrl *ctrl;

 os_snprintf(buf, sizeof(buf), "%s%s", wpas_ctrl_path, ifname);
 ctrl = wpa_ctrl_open(buf);
 if (ctrl == ((void*)0))
  printf("wpa_command: wpa_ctrl_open(%s) failed\n", buf);
 return ctrl;
}
