
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int ENTER () ;
 int PAM_SYSTEM_ERR ;
 int RETURNC (int ) ;

int
pam_get_mapped_username(pam_handle_t *pamh,
 const char *src_username,
 const char *src_module_type,
 const char *src_authn_domain,
 const char *target_module_type,
 const char *target_authn_domain,
 char **target_module_username)
{

 ENTER();
 RETURNC(PAM_SYSTEM_ERR);
}
