
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;
struct eap_tls_data {int state; TYPE_1__ ssl; } ;


 int FAILURE ;
 int MSG_DEBUG ;
 int eap_tls_state_txt (int) ;
 int tls_connection_remove_session (int ) ;
 int wpa_printf (int ,char*,int ,int ) ;

__attribute__((used)) static void eap_tls_state(struct eap_tls_data *data, int state)
{
 wpa_printf(MSG_DEBUG, "EAP-TLS: %s -> %s",
     eap_tls_state_txt(data->state),
     eap_tls_state_txt(state));
 data->state = state;
 if (state == FAILURE)
  tls_connection_remove_session(data->ssl.conn);
}
