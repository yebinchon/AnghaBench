
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOGIN_SETALL ;
 int LOGIN_SETENV ;
 int LOGIN_SETGROUP ;
 int LOGIN_SETLOGIN ;
 int LOGIN_SETPATH ;
 int LOGIN_SETUSER ;
 int LOG_ERR ;
 int PAM_DELETE_CRED ;
 int PAM_SUCCESS ;
 scalar_t__ dochroot ;
 scalar_t__ dowtmp ;
 int ftpd_logwtmp (int ,int *,int *) ;
 int getpwuid (int ) ;
 scalar_t__ guest ;
 scalar_t__ logged_in ;
 int pam_close_session (int *,int ) ;
 int pam_end (int *,int) ;
 int pam_setcred (int *,int ) ;
 int pam_strerror (int *,int) ;
 int * pamh ;
 int * pw ;
 int seteuid (int ) ;
 int setusercontext (int *,int ,int ,int) ;
 int syslog (int ,char*,int ) ;
 int wtmpid ;

__attribute__((used)) static void
end_login(void)
{




 (void) seteuid(0);





 if (logged_in && dowtmp)
  ftpd_logwtmp(wtmpid, ((void*)0), ((void*)0));
 pw = ((void*)0);
 logged_in = 0;
 guest = 0;
 dochroot = 0;
}
