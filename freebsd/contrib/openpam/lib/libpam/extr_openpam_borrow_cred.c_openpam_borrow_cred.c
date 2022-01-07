
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {scalar_t__ pw_uid; int pw_gid; int pw_name; } ;
struct pam_saved_cred {int ngroups; int groups; int egid; scalar_t__ euid; } ;
typedef int pam_handle_t ;


 int ENTERI (scalar_t__) ;
 int FREE (struct pam_saved_cred*) ;
 int NGROUPS_MAX ;
 int PAM_BUF_ERR ;
 int PAM_LOG_LIBDEBUG ;
 int PAM_PERM_DENIED ;
 int PAM_SAVED_CRED ;
 int PAM_SUCCESS ;
 int PAM_SYSTEM_ERR ;
 int RETURNC (int) ;
 struct pam_saved_cred* calloc (int,int) ;
 int getegid () ;
 scalar_t__ geteuid () ;
 int getgroups (int ,int ) ;
 scalar_t__ initgroups (int ,int ) ;
 int openpam_free_data ;
 int openpam_log (int ,char*,...) ;
 int openpam_restore_cred (int *) ;
 int pam_get_data (int *,int ,void const**) ;
 int pam_set_data (int *,int ,struct pam_saved_cred*,int *) ;
 scalar_t__ setegid (int ) ;
 scalar_t__ seteuid (scalar_t__) ;

int
openpam_borrow_cred(pam_handle_t *pamh,
 const struct passwd *pwd)
{
 struct pam_saved_cred *scred;
 const void *scredp;
 int r;

 ENTERI(pwd->pw_uid);
 r = pam_get_data(pamh, PAM_SAVED_CRED, &scredp);
 if (r == PAM_SUCCESS && scredp != ((void*)0)) {
  openpam_log(PAM_LOG_LIBDEBUG,
      "already operating under borrowed credentials");
  RETURNC(PAM_SYSTEM_ERR);
 }
 if (geteuid() != 0 && geteuid() != pwd->pw_uid) {
  openpam_log(PAM_LOG_LIBDEBUG, "called with non-zero euid: %d",
      (int)geteuid());
  RETURNC(PAM_PERM_DENIED);
 }
 scred = calloc(1, sizeof *scred);
 if (scred == ((void*)0))
  RETURNC(PAM_BUF_ERR);
 scred->euid = geteuid();
 scred->egid = getegid();
 r = getgroups(NGROUPS_MAX, scred->groups);
 if (r < 0) {
  FREE(scred);
  RETURNC(PAM_SYSTEM_ERR);
 }
 scred->ngroups = r;
 r = pam_set_data(pamh, PAM_SAVED_CRED, scred, &openpam_free_data);
 if (r != PAM_SUCCESS) {
  FREE(scred);
  RETURNC(r);
 }
 if (geteuid() == pwd->pw_uid)
  RETURNC(PAM_SUCCESS);
 if (initgroups(pwd->pw_name, pwd->pw_gid) < 0 ||
       setegid(pwd->pw_gid) < 0 || seteuid(pwd->pw_uid) < 0) {
  openpam_restore_cred(pamh);
  RETURNC(PAM_SYSTEM_ERR);
 }
 RETURNC(PAM_SUCCESS);
}
