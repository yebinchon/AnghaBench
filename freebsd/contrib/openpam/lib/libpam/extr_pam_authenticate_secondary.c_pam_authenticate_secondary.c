
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int ENTER () ;
 int PAM_SYSTEM_ERR ;
 int RETURNC (int ) ;

int
pam_authenticate_secondary(pam_handle_t *pamh,
 char *target_username,
 char *target_module_type,
 char *target_authn_domain,
 char *target_supp_data,
 char *target_module_authtok,
 int flags)
{

 ENTER();
 RETURNC(PAM_SYSTEM_ERR);
}
