
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAM_CONV ;
 int PAM_DELETE_CRED ;
 int PAM_SILENT ;
 int debug (char*) ;
 int mm_is_monitor () ;
 int null_conv ;
 int pam_close_session (int *,int ) ;
 int pam_end (int *,int ) ;
 int pam_set_item (int *,int ,void const*) ;
 int pam_setcred (int *,int ) ;
 scalar_t__ sshpam_authenticated ;
 scalar_t__ sshpam_cred_established ;
 int sshpam_err ;
 int * sshpam_handle ;
 scalar_t__ sshpam_session_open ;
 scalar_t__ use_privsep ;

void
sshpam_cleanup(void)
{
 if (sshpam_handle == ((void*)0) || (use_privsep && !mm_is_monitor()))
  return;
 debug("PAM: cleanup");
 pam_set_item(sshpam_handle, PAM_CONV, (const void *)&null_conv);
 if (sshpam_session_open) {
  debug("PAM: closing session");
  pam_close_session(sshpam_handle, PAM_SILENT);
  sshpam_session_open = 0;
 }
 if (sshpam_cred_established) {
  debug("PAM: deleting credentials");
  pam_setcred(sshpam_handle, PAM_DELETE_CRED);
  sshpam_cred_established = 0;
 }
 sshpam_authenticated = 0;
 pam_end(sshpam_handle, sshpam_err);
 sshpam_handle = ((void*)0);
}
