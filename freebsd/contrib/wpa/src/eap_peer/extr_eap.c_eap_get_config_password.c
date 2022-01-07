
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int ext_pw_buf; } ;
struct eap_peer_config {int flags; size_t password_len; int const* password; } ;


 int EAP_CONFIG_FLAGS_EXT_PASSWORD ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 scalar_t__ eap_get_ext_password (struct eap_sm*,struct eap_peer_config*) ;
 int const* wpabuf_head (int ) ;
 size_t wpabuf_len (int ) ;

const u8 * eap_get_config_password(struct eap_sm *sm, size_t *len)
{
 struct eap_peer_config *config = eap_get_config(sm);
 if (config == ((void*)0))
  return ((void*)0);

 if (config->flags & EAP_CONFIG_FLAGS_EXT_PASSWORD) {
  if (eap_get_ext_password(sm, config) < 0)
   return ((void*)0);
  *len = wpabuf_len(sm->ext_pw_buf);
  return wpabuf_head(sm->ext_pw_buf);
 }

 *len = config->password_len;
 return config->password;
}
