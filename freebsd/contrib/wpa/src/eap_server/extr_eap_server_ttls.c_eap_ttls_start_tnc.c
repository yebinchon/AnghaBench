
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ttls_data {scalar_t__ state; int tnc_started; } ;
struct eap_sm {int tnc; } ;


 int EAP_TYPE_TNC ;
 int FAILURE ;
 int MSG_DEBUG ;
 int PHASE2_METHOD ;
 scalar_t__ SUCCESS ;
 scalar_t__ eap_ttls_phase2_eap_init (struct eap_sm*,struct eap_ttls_data*,int ) ;
 int eap_ttls_state (struct eap_ttls_data*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_ttls_start_tnc(struct eap_sm *sm, struct eap_ttls_data *data)
{
}
