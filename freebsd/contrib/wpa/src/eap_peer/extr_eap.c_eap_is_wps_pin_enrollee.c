
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_peer_config {scalar_t__ identity_len; int * phase1; int identity; } ;


 int WSC_ID_ENROLLEE ;
 scalar_t__ WSC_ID_ENROLLEE_LEN ;
 scalar_t__ os_memcmp (int ,int ,scalar_t__) ;
 int * os_strstr (int *,char*) ;

int eap_is_wps_pin_enrollee(struct eap_peer_config *conf)
{
 if (conf->identity_len != WSC_ID_ENROLLEE_LEN ||
     os_memcmp(conf->identity, WSC_ID_ENROLLEE, WSC_ID_ENROLLEE_LEN))
  return 0;

 if (conf->phase1 == ((void*)0) || os_strstr(conf->phase1, "pin=") == ((void*)0))
  return 0;

 return 1;
}
