
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int mgmt_frame_prot; } ;



int wpa_auth_uses_mfp(struct wpa_state_machine *sm)
{
 return sm ? sm->mgmt_frame_prot : 0;
}
