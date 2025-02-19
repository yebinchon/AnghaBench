
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sake_data {scalar_t__ state; } ;


 int CHALLENGE ;
 scalar_t__ IDENTITY ;
 int MSG_DEBUG ;
 int eap_sake_state (struct eap_sake_data*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_sake_process_identity(struct eap_sm *sm,
          struct eap_sake_data *data,
          const struct wpabuf *respData,
          const u8 *payload, size_t payloadlen)
{
 if (data->state != IDENTITY)
  return;

 wpa_printf(MSG_DEBUG, "EAP-SAKE: Received Response/Identity");

 eap_sake_state(data, CHALLENGE);
}
