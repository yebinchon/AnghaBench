
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct eapol_state_machine {unsigned int auth_pae_state; unsigned int be_auth_state; unsigned int reauth_timer_state; unsigned int auth_key_tx_state; unsigned int key_rx_state; unsigned int ctrl_dir_state; int sta; struct eapol_authenticator* eapol; TYPE_1__* eap_if; scalar_t__ eap; scalar_t__ initializing; int addr; } ;
struct TYPE_6__ {int ctx; } ;
struct TYPE_5__ {int (* eapol_event ) (int ,int ,int ) ;int (* aaa_send ) (int ,int ,int ,int ) ;} ;
struct eapol_authenticator {TYPE_3__ conf; TYPE_2__ cb; } ;
struct TYPE_4__ {int * aaaEapRespData; scalar_t__ aaaEapResp; } ;


 int AUTH_KEY_TX ;
 int AUTH_PAE ;
 int BE_AUTH ;
 int CTRL_DIR ;
 int EAPOL_AUTH_SM_CHANGE ;
 int ETH_ALEN ;
 scalar_t__ FALSE ;
 int KEY_RX ;
 int MSG_DEBUG ;
 int REAUTH_TIMER ;
 int SM_STEP_RUN (int ) ;
 scalar_t__ eap_server_sm_step (scalar_t__) ;
 int eapol_auth_step (struct eapol_state_machine*) ;
 scalar_t__ eapol_sm_sta_entry_alive (struct eapol_authenticator*,int *) ;
 int os_memcpy (int *,int ,int) ;
 int stub1 (int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (int *) ;
 int wpabuf_len (int *) ;

__attribute__((used)) static void eapol_sm_step_run(struct eapol_state_machine *sm)
{
 struct eapol_authenticator *eapol = sm->eapol;
 u8 addr[ETH_ALEN];
 unsigned int prev_auth_pae, prev_be_auth, prev_reauth_timer,
  prev_auth_key_tx, prev_key_rx, prev_ctrl_dir;
 int max_steps = 100;

 os_memcpy(addr, sm->addr, ETH_ALEN);







restart:
 prev_auth_pae = sm->auth_pae_state;
 prev_be_auth = sm->be_auth_state;
 prev_reauth_timer = sm->reauth_timer_state;
 prev_auth_key_tx = sm->auth_key_tx_state;
 prev_key_rx = sm->key_rx_state;
 prev_ctrl_dir = sm->ctrl_dir_state;

 SM_STEP_RUN(AUTH_PAE);
 if (sm->initializing || eapol_sm_sta_entry_alive(eapol, addr))
  SM_STEP_RUN(BE_AUTH);
 if (sm->initializing || eapol_sm_sta_entry_alive(eapol, addr))
  SM_STEP_RUN(REAUTH_TIMER);
 if (sm->initializing || eapol_sm_sta_entry_alive(eapol, addr))
  SM_STEP_RUN(AUTH_KEY_TX);
 if (sm->initializing || eapol_sm_sta_entry_alive(eapol, addr))
  SM_STEP_RUN(KEY_RX);
 if (sm->initializing || eapol_sm_sta_entry_alive(eapol, addr))
  SM_STEP_RUN(CTRL_DIR);

 if (prev_auth_pae != sm->auth_pae_state ||
     prev_be_auth != sm->be_auth_state ||
     prev_reauth_timer != sm->reauth_timer_state ||
     prev_auth_key_tx != sm->auth_key_tx_state ||
     prev_key_rx != sm->key_rx_state ||
     prev_ctrl_dir != sm->ctrl_dir_state) {
  if (--max_steps > 0)
   goto restart;

  eapol_auth_step(sm);
  return;
 }

 if (eapol_sm_sta_entry_alive(eapol, addr) && sm->eap) {
  if (eap_server_sm_step(sm->eap)) {
   if (--max_steps > 0)
    goto restart;

   eapol_auth_step(sm);
   return;
  }


  if (sm->eap_if->aaaEapResp) {
   sm->eap_if->aaaEapResp = FALSE;
   if (sm->eap_if->aaaEapRespData == ((void*)0)) {
    wpa_printf(MSG_DEBUG, "EAPOL: aaaEapResp set, "
        "but no aaaEapRespData available");
    return;
   }
   sm->eapol->cb.aaa_send(
    sm->eapol->conf.ctx, sm->sta,
    wpabuf_head(sm->eap_if->aaaEapRespData),
    wpabuf_len(sm->eap_if->aaaEapRespData));
  }
 }

 if (eapol_sm_sta_entry_alive(eapol, addr))
  sm->eapol->cb.eapol_event(sm->eapol->conf.ctx, sm->sta,
       EAPOL_AUTH_SM_CHANGE);
}
