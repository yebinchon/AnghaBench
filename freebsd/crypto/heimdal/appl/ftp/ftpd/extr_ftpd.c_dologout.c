
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int _exit (int) ;
 int cond_kdestroy () ;
 int exit (int) ;
 int ftpd_logwtmp (int ,char*,char*) ;
 scalar_t__ logged_in ;
 int seteuid (int ) ;
 scalar_t__ transflag ;
 int ttyline ;
 scalar_t__ urgflag ;

void
dologout(int status)
{
    transflag = 0;
    urgflag = 0;
    if (logged_in) {



 seteuid((uid_t)0);
 ftpd_logwtmp(ttyline, "", "");
    }




    _exit(status);

}
