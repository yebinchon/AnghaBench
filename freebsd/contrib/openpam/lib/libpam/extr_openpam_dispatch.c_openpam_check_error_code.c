
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAM_ABORT ;
 int PAM_ACCT_EXPIRED ;
 int PAM_AUTHINFO_UNAVAIL ;
 int PAM_AUTHTOK_DISABLE_AGING ;
 int PAM_AUTHTOK_ERR ;
 int PAM_AUTHTOK_LOCK_BUSY ;
 int PAM_AUTHTOK_RECOVERY_ERR ;
 int PAM_AUTH_ERR ;
 int PAM_BUF_ERR ;
 int PAM_CONV_ERR ;
 int PAM_CRED_ERR ;
 int PAM_CRED_EXPIRED ;
 int PAM_CRED_INSUFFICIENT ;
 int PAM_CRED_UNAVAIL ;
 int PAM_LOG_ERROR ;
 int PAM_MAXTRIES ;
 int PAM_NEW_AUTHTOK_REQD ;
 int PAM_PERM_DENIED ;
 int PAM_SERVICE_ERR ;
 int PAM_SESSION_ERR ;






 int PAM_SUCCESS ;
 int PAM_SYSTEM_ERR ;
 int PAM_TRY_AGAIN ;
 int PAM_USER_UNKNOWN ;
 int openpam_log (int ,char*,int ,int) ;
 int * pam_sm_func_name ;

__attribute__((used)) static void
openpam_check_error_code(int primitive, int r)
{

 if (r == PAM_SUCCESS ||
     r == PAM_SYSTEM_ERR ||
     r == PAM_SERVICE_ERR ||
     r == PAM_BUF_ERR ||
     r == PAM_CONV_ERR ||
     r == PAM_PERM_DENIED ||
     r == PAM_ABORT)
  return;


 switch (primitive) {
 case 132:
  if (r == PAM_AUTH_ERR ||
      r == PAM_CRED_INSUFFICIENT ||
      r == PAM_AUTHINFO_UNAVAIL ||
      r == PAM_USER_UNKNOWN ||
      r == PAM_MAXTRIES)
   return;
  break;
 case 128:
  if (r == PAM_CRED_UNAVAIL ||
      r == PAM_CRED_EXPIRED ||
      r == PAM_USER_UNKNOWN ||
      r == PAM_CRED_ERR)
   return;
  break;
 case 133:
  if (r == PAM_USER_UNKNOWN ||
      r == PAM_AUTH_ERR ||
      r == PAM_NEW_AUTHTOK_REQD ||
      r == PAM_ACCT_EXPIRED)
   return;
  break;
 case 129:
 case 130:
  if (r == PAM_SESSION_ERR)
   return;
  break;
 case 131:
  if (r == PAM_PERM_DENIED ||
      r == PAM_AUTHTOK_ERR ||
      r == PAM_AUTHTOK_RECOVERY_ERR ||
      r == PAM_AUTHTOK_LOCK_BUSY ||
      r == PAM_AUTHTOK_DISABLE_AGING ||
      r == PAM_TRY_AGAIN)
   return;
  break;
 }

 openpam_log(PAM_LOG_ERROR, "%s(): unexpected return value %d",
     pam_sm_func_name[primitive], r);
}
