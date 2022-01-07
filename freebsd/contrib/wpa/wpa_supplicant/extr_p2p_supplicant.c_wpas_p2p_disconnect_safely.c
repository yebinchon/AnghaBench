
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_group_interface; } ;


 scalar_t__ NOT_P2P_GROUP_INTERFACE ;
 scalar_t__ eloop_register_timeout (int ,int ,int ,struct wpa_supplicant*,int *) ;
 int run_wpas_p2p_disconnect ;
 int wpas_p2p_disconnect (struct wpa_supplicant*) ;

__attribute__((used)) static int wpas_p2p_disconnect_safely(struct wpa_supplicant *wpa_s,
          struct wpa_supplicant *calling_wpa_s)
{
 if (calling_wpa_s == wpa_s && wpa_s &&
     wpa_s->p2p_group_interface != NOT_P2P_GROUP_INTERFACE) {






  if (eloop_register_timeout(0, 0, run_wpas_p2p_disconnect,
        wpa_s, ((void*)0)) < 0)
   return -1;
  return 0;
 }

 return wpas_p2p_disconnect(wpa_s);
}
