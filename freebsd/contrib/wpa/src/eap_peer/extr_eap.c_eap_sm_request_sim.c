
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;


 int WPA_CTRL_REQ_SIM ;
 int eap_sm_request (struct eap_sm*,int ,char const*,int ) ;
 int os_strlen (char const*) ;

void eap_sm_request_sim(struct eap_sm *sm, const char *req)
{
 eap_sm_request(sm, WPA_CTRL_REQ_SIM, req, os_strlen(req));
}
