
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int ENTER () ;
 int PAM_SYSTEM_ERR ;
 int RETURNC (int ) ;

int
pam_sm_close_session(pam_handle_t *pamh,
 int flags,
 int args,
 const char **argv)
{

 ENTER();
 RETURNC(PAM_SYSTEM_ERR);
}
