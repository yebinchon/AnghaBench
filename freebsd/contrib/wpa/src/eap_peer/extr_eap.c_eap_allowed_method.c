
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct eap_sm {int dummy; } ;


 int eap_config_allowed_method (struct eap_sm*,int ,int,int ) ;
 int eap_get_config (struct eap_sm*) ;

int eap_allowed_method(struct eap_sm *sm, int vendor, u32 method)
{
 return eap_config_allowed_method(sm, eap_get_config(sm), vendor,
      method);
}
