
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 scalar_t__ wpa_ctrl_attach (struct wpa_ctrl*) ;
 int wpa_ctrl_close (struct wpa_ctrl*) ;
 struct wpa_ctrl* wpa_open_ctrl (char const*) ;

struct wpa_ctrl * open_wpa_mon(const char *ifname)
{
 struct wpa_ctrl *ctrl;

 ctrl = wpa_open_ctrl(ifname);
 if (ctrl == ((void*)0))
  return ((void*)0);
 if (wpa_ctrl_attach(ctrl) < 0) {
  wpa_ctrl_close(ctrl);
  return ((void*)0);
 }

 return ctrl;
}
