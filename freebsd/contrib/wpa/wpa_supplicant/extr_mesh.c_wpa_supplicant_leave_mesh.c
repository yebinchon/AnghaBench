
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int MSG_ERROR ;
 int MSG_INFO ;
 int wpa_drv_leave_mesh (struct wpa_supplicant*) ;
 int wpa_drv_set_operstate (struct wpa_supplicant*,int) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_supplicant_mesh_deinit (struct wpa_supplicant*) ;

int wpa_supplicant_leave_mesh(struct wpa_supplicant *wpa_s)
{
 int ret = 0;

 wpa_msg(wpa_s, MSG_INFO, "leaving mesh");


 wpa_supplicant_mesh_deinit(wpa_s);

 ret = wpa_drv_leave_mesh(wpa_s);
 if (ret)
  wpa_msg(wpa_s, MSG_ERROR, "mesh leave error=%d", ret);

 wpa_drv_set_operstate(wpa_s, 1);

 return ret;
}
