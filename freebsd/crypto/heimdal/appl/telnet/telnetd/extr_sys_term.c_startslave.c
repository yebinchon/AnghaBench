
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct utmp {int dummy; } ;
struct TYPE_4__ {int ut_pid; char const* ut_user; char const* ut_host; char const* ut_line; char const* ut_id; int ut_type; int ut_time; } ;


 int LOGIN_PROCESS ;
 int O_APPEND ;
 int O_WRONLY ;
 int WJSIGNAL ;
 int auth_level ;
 char const* clean_ttyname (int ) ;
 int close (int) ;
 scalar_t__ decrypt_input ;
 scalar_t__ encrypt_output ;
 int endutent () ;
 int exit (int) ;
 int fatal (int ,char*) ;
 int fatalperror (int ,char*) ;
 int fork () ;
 int getptyslave () ;
 int kerberos5_dfspag () ;
 int line ;
 int net ;
 int no_warn ;
 int open (int ,int) ;
 int pututline (TYPE_1__*) ;
 int setpgrp () ;
 int signal (int ,void (*) (int)) ;
 int start_login (char const*,int,char*) ;
 int strlen (char*) ;
 int strncpy (char const*,char const*,int) ;
 int time (int *) ;
 int utmp_sig_init () ;
 int utmp_sig_notify (int) ;
 int utmp_sig_reset () ;
 int write (int,TYPE_1__*,int) ;
 int writenet (char*,int ) ;
 TYPE_1__ wtmp ;
 int wtmpf ;

void
startslave(const char *host, const char *utmp_host,
    int autologin, char *autoname)
{
    int i;
    {
 char *tbuf =
     "\r\n*** Connection not encrypted! "
     "Communication may be eavesdropped. ***\r\n";



     writenet(tbuf, strlen(tbuf));
    }




    if ((i = fork()) < 0)
 fatalperror(net, "fork");
    if (i) {
    } else {
 getptyslave();




 start_login(host, autologin, autoname);

    }
}
