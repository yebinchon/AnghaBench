
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
 int _exit (int) ;
 scalar_t__ dowtmp ;
 int ftpd_logwtmp (int ,int *,int *) ;
 int getpwuid (int ) ;
 scalar_t__ logged_in ;
 int seteuid (int ) ;
 int setusercontext (int *,int ,int ,int) ;
 int wtmpid ;

void
dologout(int status)
{

 if (logged_in && dowtmp) {
  (void) seteuid(0);





  ftpd_logwtmp(wtmpid, ((void*)0), ((void*)0));
 }

 _exit(status);
}
