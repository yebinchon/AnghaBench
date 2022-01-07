
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int ENTER () ;
 int PAM_AUTHTOK ;
 int PAM_BAD_CONSTANT ;
 int PAM_CHANGE_EXPIRED_AUTHTOK ;
 int PAM_OLDAUTHTOK ;
 int PAM_PRELIM_CHECK ;
 int PAM_SILENT ;
 int PAM_SM_CHAUTHTOK ;
 int PAM_SUCCESS ;
 int PAM_UPDATE_AUTHTOK ;
 int RETURNC (int) ;
 int openpam_dispatch (int *,int ,int) ;
 int pam_set_item (int *,int ,int *) ;

int
pam_chauthtok(pam_handle_t *pamh,
 int flags)
{
 int r;

 ENTER();
 if (flags & ~(PAM_SILENT|PAM_CHANGE_EXPIRED_AUTHTOK))
  RETURNC(PAM_BAD_CONSTANT);
 r = openpam_dispatch(pamh, PAM_SM_CHAUTHTOK,
     flags | PAM_PRELIM_CHECK);
 if (r == PAM_SUCCESS)
  r = openpam_dispatch(pamh, PAM_SM_CHAUTHTOK,
      flags | PAM_UPDATE_AUTHTOK);
 pam_set_item(pamh, PAM_OLDAUTHTOK, ((void*)0));
 pam_set_item(pamh, PAM_AUTHTOK, ((void*)0));
 RETURNC(r);
}
