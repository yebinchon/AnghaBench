
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;


 int WPA_CTRL_REQ_EAP_OTP ;
 int eap_sm_request (struct eap_sm*,int ,char const*,size_t) ;

void eap_sm_request_otp(struct eap_sm *sm, const char *msg, size_t msg_len)
{
 eap_sm_request(sm, WPA_CTRL_REQ_EAP_OTP, msg, msg_len);
}
