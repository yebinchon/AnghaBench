
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;


 int WPA_CTRL_REQ_EAP_IDENTITY ;
 int eap_sm_request (struct eap_sm*,int ,int *,int ) ;

void eap_sm_request_identity(struct eap_sm *sm)
{
 eap_sm_request(sm, WPA_CTRL_REQ_EAP_IDENTITY, ((void*)0), 0);
}
