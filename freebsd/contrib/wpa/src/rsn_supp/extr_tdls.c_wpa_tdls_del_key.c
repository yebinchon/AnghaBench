
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_tdls_peer {int addr; } ;
struct wpa_sm {int dummy; } ;


 int MSG_WARNING ;
 int WPA_ALG_NONE ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpa_sm_set_key (struct wpa_sm*,int ,int ,int ,int ,int *,int ,int *,int ) ;

__attribute__((used)) static int wpa_tdls_del_key(struct wpa_sm *sm, struct wpa_tdls_peer *peer)
{
 if (wpa_sm_set_key(sm, WPA_ALG_NONE, peer->addr,
      0, 0, ((void*)0), 0, ((void*)0), 0) < 0) {
  wpa_printf(MSG_WARNING, "TDLS: Failed to delete TPK-TK from "
      "the driver");
  return -1;
 }

 return 0;
}
