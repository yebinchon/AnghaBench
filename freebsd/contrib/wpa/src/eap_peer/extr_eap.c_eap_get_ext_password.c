
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int * ext_pw_buf; int ext_pw; } ;
struct eap_peer_config {int password_len; int * password; } ;


 int ext_password_free (int *) ;
 int * ext_password_get (int ,char*) ;
 int os_free (char*) ;
 int os_memcpy (char*,int *,int ) ;
 char* os_zalloc (int ) ;

__attribute__((used)) static int eap_get_ext_password(struct eap_sm *sm,
    struct eap_peer_config *config)
{
 char *name;

 if (config->password == ((void*)0))
  return -1;

 name = os_zalloc(config->password_len + 1);
 if (name == ((void*)0))
  return -1;
 os_memcpy(name, config->password, config->password_len);

 ext_password_free(sm->ext_pw_buf);
 sm->ext_pw_buf = ext_password_get(sm->ext_pw, name);
 os_free(name);

 return sm->ext_pw_buf == ((void*)0) ? -1 : 0;
}
