
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAM_CHANGE_EXPIRED_AUTHTOK ;
 int PAM_CONV ;
 scalar_t__ PAM_SUCCESS ;
 int debug (char*) ;
 int fatal (char*,...) ;
 scalar_t__ pam_chauthtok (int ,int ) ;
 scalar_t__ pam_set_item (int ,int ,void const*) ;
 int pam_strerror (int ,scalar_t__) ;
 scalar_t__ sshpam_err ;
 int sshpam_handle ;
 int tty_conv ;
 scalar_t__ use_privsep ;

void
do_pam_chauthtok(void)
{
 if (use_privsep)
  fatal("Password expired (unable to change with privsep)");
 sshpam_err = pam_set_item(sshpam_handle, PAM_CONV,
     (const void *)&tty_conv);
 if (sshpam_err != PAM_SUCCESS)
  fatal("PAM: failed to set PAM_CONV: %s",
      pam_strerror(sshpam_handle, sshpam_err));
 debug("PAM: changing password");
 sshpam_err = pam_chauthtok(sshpam_handle, PAM_CHANGE_EXPIRED_AUTHTOK);
 if (sshpam_err != PAM_SUCCESS)
  fatal("PAM: pam_chauthtok(): %s",
      pam_strerror(sshpam_handle, sshpam_err));
}
