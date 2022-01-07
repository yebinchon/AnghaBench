
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int wpa_auth; void* pairwise_set; int addr; int PTK; void* PTK_valid; } ;


 void* FALSE ;
 int MSG_DEBUG ;
 int WPA_ALG_NONE ;
 int eloop_cancel_timeout (int ,int ,struct wpa_state_machine*) ;
 int os_memset (int *,int ,int) ;
 scalar_t__ wpa_auth_set_key (int ,int ,int ,int ,int ,int *,int ) ;
 int wpa_printf (int ,char*) ;
 int wpa_rekey_ptk ;

void wpa_remove_ptk(struct wpa_state_machine *sm)
{
 sm->PTK_valid = FALSE;
 os_memset(&sm->PTK, 0, sizeof(sm->PTK));
 if (wpa_auth_set_key(sm->wpa_auth, 0, WPA_ALG_NONE, sm->addr, 0, ((void*)0),
        0))
  wpa_printf(MSG_DEBUG,
      "RSN: PTK removal from the driver failed");
 sm->pairwise_set = FALSE;
 eloop_cancel_timeout(wpa_rekey_ptk, sm->wpa_auth, sm);
}
