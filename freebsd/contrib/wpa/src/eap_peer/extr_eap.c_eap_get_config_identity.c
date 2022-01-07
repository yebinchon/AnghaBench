
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {size_t identity_len; int const* identity; } ;


 struct eap_peer_config* eap_get_config (struct eap_sm*) ;

const u8 * eap_get_config_identity(struct eap_sm *sm, size_t *len)
{
 struct eap_peer_config *config = eap_get_config(sm);
 if (config == ((void*)0))
  return ((void*)0);
 *len = config->identity_len;
 return config->identity;
}
