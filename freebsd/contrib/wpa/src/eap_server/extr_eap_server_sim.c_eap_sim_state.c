
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_data {int state; } ;


 int MSG_DEBUG ;
 int eap_sim_state_txt (int) ;
 int wpa_printf (int ,char*,int ,int ) ;

__attribute__((used)) static void eap_sim_state(struct eap_sim_data *data, int state)
{
 wpa_printf(MSG_DEBUG, "EAP-SIM: %s -> %s",
     eap_sim_state_txt(data->state),
     eap_sim_state_txt(state));
 data->state = state;
}
