
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ otp_len; int * otp; } ;


 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 int os_free (int *) ;
 int os_memset (int *,int ,scalar_t__) ;

void eap_clear_config_otp(struct eap_sm *sm)
{
 struct eap_peer_config *config = eap_get_config(sm);
 if (config == ((void*)0))
  return;
 os_memset(config->otp, 0, config->otp_len);
 os_free(config->otp);
 config->otp = ((void*)0);
 config->otp_len = 0;
}
