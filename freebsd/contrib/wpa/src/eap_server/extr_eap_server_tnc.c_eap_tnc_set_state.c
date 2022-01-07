
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_tnc_data {int state; } ;
typedef enum eap_tnc_state { ____Placeholder_eap_tnc_state } eap_tnc_state ;


 int MSG_DEBUG ;
 int eap_tnc_state_txt (int) ;
 int wpa_printf (int ,char*,int ,int ) ;

__attribute__((used)) static void eap_tnc_set_state(struct eap_tnc_data *data,
         enum eap_tnc_state new_state)
{
 wpa_printf(MSG_DEBUG, "EAP-TNC: %s -> %s",
     eap_tnc_state_txt(data->state),
     eap_tnc_state_txt(new_state));
 data->state = new_state;
}
