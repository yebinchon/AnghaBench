
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int eap_proxy; int eap; int * eapReqData; int * last_rx_key; } ;


 int eap_proxy_sm_abort (int ) ;
 int eap_sm_abort (int ) ;
 int os_free (int *) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static void eapol_sm_abortSupp(struct eapol_sm *sm)
{


 os_free(sm->last_rx_key);
 sm->last_rx_key = ((void*)0);
 wpabuf_free(sm->eapReqData);
 sm->eapReqData = ((void*)0);
 eap_sm_abort(sm->eap);



}
