
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_test_data {int wpa_s; scalar_t__ radius_access_accept_received; } ;


 int printf (char*) ;
 int send_eap_request_identity (int ,int *) ;

__attribute__((used)) static void eapol_sm_reauth(void *eloop_ctx, void *timeout_ctx)
{
 struct eapol_test_data *e = eloop_ctx;
 printf("\n\n\n\n\neapol_test: Triggering EAP reauthentication\n\n");
 e->radius_access_accept_received = 0;
 send_eap_request_identity(e->wpa_s, ((void*)0));
}
