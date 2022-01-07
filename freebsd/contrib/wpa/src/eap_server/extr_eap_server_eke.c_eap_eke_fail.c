
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct eap_eke_data {int failure_code; } ;


 int FAILURE_REPORT ;
 int MSG_DEBUG ;
 int eap_eke_state (struct eap_eke_data*,int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void eap_eke_fail(struct eap_eke_data *data, u32 code)
{
 wpa_printf(MSG_DEBUG, "EAP-EKE: Failure - code 0x%x", code);
 data->failure_code = code;
 eap_eke_state(data, FAILURE_REPORT);
}
