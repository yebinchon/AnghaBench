
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int ENTER () ;
 int PAM_SM_ACCT_MGMT ;
 int RETURNC (int) ;
 int openpam_dispatch (int *,int ,int) ;

int
pam_acct_mgmt(pam_handle_t *pamh,
 int flags)
{
 int r;

 ENTER();
 r = openpam_dispatch(pamh, PAM_SM_ACCT_MGMT, flags);
 RETURNC(r);
}
