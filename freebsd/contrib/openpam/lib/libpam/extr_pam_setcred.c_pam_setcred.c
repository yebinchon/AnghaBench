
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int ENTER () ;
 int PAM_BAD_CONSTANT ;
 int PAM_DELETE_CRED ;
 int PAM_ESTABLISH_CRED ;
 int PAM_REFRESH_CRED ;
 int PAM_REINITIALIZE_CRED ;
 int PAM_SILENT ;
 int PAM_SM_SETCRED ;
 int RETURNC (int) ;
 int openpam_dispatch (int *,int ,int) ;

int
pam_setcred(pam_handle_t *pamh,
 int flags)
{
 int r;

 ENTER();
 if (flags & ~(PAM_SILENT|PAM_ESTABLISH_CRED|PAM_DELETE_CRED|
  PAM_REINITIALIZE_CRED|PAM_REFRESH_CRED))
  RETURNC(PAM_BAD_CONSTANT);

 r = openpam_dispatch(pamh, PAM_SM_SETCRED, flags);
 RETURNC(r);
}
