
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pam_saved_cred {scalar_t__ euid; int egid; int groups; int ngroups; } ;
typedef int pam_handle_t ;


 int ENTER () ;
 int PAM_SAVED_CRED ;
 int PAM_SUCCESS ;
 int PAM_SYSTEM_ERR ;
 int RETURNC (int) ;
 scalar_t__ geteuid () ;
 int pam_get_data (int *,int ,void const**) ;
 int pam_set_data (int *,int ,int *,int *) ;
 scalar_t__ setegid (int ) ;
 scalar_t__ seteuid (scalar_t__) ;
 scalar_t__ setgroups (int ,int ) ;

int
openpam_restore_cred(pam_handle_t *pamh)
{
 const struct pam_saved_cred *scred;
 const void *scredp;
 int r;

 ENTER();
 r = pam_get_data(pamh, PAM_SAVED_CRED, &scredp);
 if (r != PAM_SUCCESS)
  RETURNC(r);
 if (scredp == ((void*)0))
  RETURNC(PAM_SYSTEM_ERR);
 scred = scredp;
 if (scred->euid != geteuid()) {
  if (seteuid(scred->euid) < 0 ||
      setgroups(scred->ngroups, scred->groups) < 0 ||
      setegid(scred->egid) < 0)
   RETURNC(PAM_SYSTEM_ERR);
 }
 pam_set_data(pamh, PAM_SAVED_CRED, ((void*)0), ((void*)0));
 RETURNC(PAM_SUCCESS);
}
