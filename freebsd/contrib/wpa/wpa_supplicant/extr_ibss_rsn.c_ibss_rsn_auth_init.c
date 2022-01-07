
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ibss_rsn_peer {int * auth; int addr; } ;
struct ibss_rsn {int auth_group; } ;


 int MSG_DEBUG ;
 int WPA_ASSOC ;
 scalar_t__ WPA_IE_OK ;
 scalar_t__ wpa_auth_sm_event (int *,int ) ;
 scalar_t__ wpa_auth_sta_associated (int ,int *) ;
 int * wpa_auth_sta_init (int ,int ,int *) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpa_validate_wpa_ie (int ,int *,int ,int *,int,int *,int ,int *,int ) ;

__attribute__((used)) static int ibss_rsn_auth_init(struct ibss_rsn *ibss_rsn,
         struct ibss_rsn_peer *peer)
{
 peer->auth = wpa_auth_sta_init(ibss_rsn->auth_group, peer->addr, ((void*)0));
 if (peer->auth == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "AUTH: wpa_auth_sta_init() failed");
  return -1;
 }


 if (wpa_validate_wpa_ie(ibss_rsn->auth_group, peer->auth, 0,
    (u8 *) "\x30\x14\x01\x00"
    "\x00\x0f\xac\x04"
    "\x01\x00\x00\x0f\xac\x04"
    "\x01\x00\x00\x0f\xac\x02"
    "\x00\x00", 22, ((void*)0), 0, ((void*)0), 0) !=
     WPA_IE_OK) {
  wpa_printf(MSG_DEBUG, "AUTH: wpa_validate_wpa_ie() failed");
  return -1;
 }

 if (wpa_auth_sm_event(peer->auth, WPA_ASSOC))
  return -1;

 if (wpa_auth_sta_associated(ibss_rsn->auth_group, peer->auth))
  return -1;

 return 0;
}
