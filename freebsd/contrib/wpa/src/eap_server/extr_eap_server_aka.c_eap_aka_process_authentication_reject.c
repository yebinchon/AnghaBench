
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_attrs {int dummy; } ;
struct eap_aka_data {int dummy; } ;


 int FAILURE ;
 int MSG_DEBUG ;
 int eap_aka_state (struct eap_aka_data*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_aka_process_authentication_reject(
 struct eap_sm *sm, struct eap_aka_data *data,
 struct wpabuf *respData, struct eap_sim_attrs *attr)
{
 wpa_printf(MSG_DEBUG, "EAP-AKA: Client rejected authentication");
 eap_aka_state(data, FAILURE);
}
