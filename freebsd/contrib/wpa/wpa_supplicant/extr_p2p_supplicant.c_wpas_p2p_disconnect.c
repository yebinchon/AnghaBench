
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int P2P_GROUP_REMOVAL_REQUESTED ;
 scalar_t__ wpas_p2p_group_delete (struct wpa_supplicant*,int ) ;

int wpas_p2p_disconnect(struct wpa_supplicant *wpa_s)
{

 if (wpa_s == ((void*)0))
  return -1;

 return wpas_p2p_group_delete(wpa_s, P2P_GROUP_REMOVAL_REQUESTED) < 0 ?
  -1 : 0;
}
