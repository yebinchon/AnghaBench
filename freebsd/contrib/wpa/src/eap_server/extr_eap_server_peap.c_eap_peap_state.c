
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;
struct eap_peap_data {int state; TYPE_1__ ssl; } ;


 int FAILURE ;
 int FAILURE_REQ ;
 int MSG_DEBUG ;
 int eap_peap_state_txt (int) ;
 int tls_connection_remove_session (int ) ;
 int wpa_printf (int ,char*,int ,int ) ;

__attribute__((used)) static void eap_peap_state(struct eap_peap_data *data, int state)
{
 wpa_printf(MSG_DEBUG, "EAP-PEAP: %s -> %s",
     eap_peap_state_txt(data->state),
     eap_peap_state_txt(state));
 data->state = state;
 if (state == FAILURE || state == FAILURE_REQ)
  tls_connection_remove_session(data->ssl.conn);
}
