
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_state_machine {int started; int ft_completed; int fils_completed; void* changed; scalar_t__ in_step_loop; int PTK; void* PTK_valid; int wpa_key_mgmt; scalar_t__ mgmt_frame_prot; void* tk_already_set; void* ReAuthenticationRequest; void* PtkGroupInit; void* GUpdateStationKeys; TYPE_1__* group; void* AuthenticationRequest; void* Init; int pmk_r1_len; int * pmk_r1; int xxkey_len; int * xxkey; int pmk_len; int * PMK; void* DeauthenticationRequest; int addr; int wpa_auth; } ;
typedef enum wpa_event { ____Placeholder_wpa_event } wpa_event ;
struct TYPE_2__ {int GKeyDoneStations; } ;


 void* FALSE ;
 int LOGGER_DEBUG ;
 int MSG_DEBUG ;
 void* TRUE ;
 int fils_set_tk (struct wpa_state_machine*) ;
 int os_memset (int *,int ,int) ;
 int wpa_auth_set_ptk_rekey_timer (struct wpa_state_machine*) ;
 int wpa_auth_start_ampe (int ,int ) ;
 int wpa_auth_vlogger (int ,int ,int ,char*,int) ;
 int wpa_ft_install_ptk (struct wpa_state_machine*) ;
 scalar_t__ wpa_key_mgmt_fils (int ) ;
 int wpa_printf (int ,char*) ;
 int wpa_remove_ptk (struct wpa_state_machine*) ;
 int wpa_sm_step (struct wpa_state_machine*) ;

int wpa_auth_sm_event(struct wpa_state_machine *sm, enum wpa_event event)
{
 int remove_ptk = 1;

 if (sm == ((void*)0))
  return -1;

 wpa_auth_vlogger(sm->wpa_auth, sm->addr, LOGGER_DEBUG,
    "event %d notification", event);

 switch (event) {
 case 133:
 case 136:
  break;
 case 132:
 case 131:
  sm->DeauthenticationRequest = TRUE;
  break;
 case 129:
 case 128:
  if (!sm->started) {







   wpa_printf(MSG_DEBUG, "WPA state machine had not been "
       "started - initialize now");
   sm->started = 1;
   sm->Init = TRUE;
   if (wpa_sm_step(sm) == 1)
    return 1;
   sm->Init = FALSE;
   sm->AuthenticationRequest = TRUE;
   break;
  }
  if (sm->GUpdateStationKeys) {




   sm->group->GKeyDoneStations--;
   sm->GUpdateStationKeys = FALSE;
   sm->PtkGroupInit = TRUE;
  }
  sm->ReAuthenticationRequest = TRUE;
  break;
 case 134:
  break;

 case 135:







  break;

 case 130:
  sm->tk_already_set = FALSE;
  return 0;
 }
 if (remove_ptk) {
  sm->PTK_valid = FALSE;
  os_memset(&sm->PTK, 0, sizeof(sm->PTK));

  if (event != 128)
   wpa_remove_ptk(sm);
 }

 if (sm->in_step_loop) {




  sm->changed = TRUE;
  return 0;
 }
 return wpa_sm_step(sm);
}
