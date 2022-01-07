
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {scalar_t__ TimeoutCtr; int ANonce; int Disconnect; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int TRUE ;
 int WPA_NONCE_LEN ;
 scalar_t__ random_get_bytes (int ,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wpa_auth_sm_ptk_update(struct wpa_state_machine *sm)
{
 if (random_get_bytes(sm->ANonce, WPA_NONCE_LEN)) {
  wpa_printf(MSG_ERROR,
      "WPA: Failed to get random data for ANonce");
  sm->Disconnect = TRUE;
  return -1;
 }
 wpa_hexdump(MSG_DEBUG, "WPA: Assign new ANonce", sm->ANonce,
      WPA_NONCE_LEN);
 sm->TimeoutCtr = 0;
 return 0;
}
