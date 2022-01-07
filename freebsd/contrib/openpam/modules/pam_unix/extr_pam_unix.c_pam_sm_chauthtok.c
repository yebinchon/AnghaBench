
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int PAM_SERVICE_ERR ;

int
pam_sm_chauthtok(pam_handle_t *pamh, int flags,
 int argc, const char *argv[])
{

 (void)pamh;
 (void)flags;
 (void)argc;
 (void)argv;
 return (PAM_SERVICE_ERR);
}
