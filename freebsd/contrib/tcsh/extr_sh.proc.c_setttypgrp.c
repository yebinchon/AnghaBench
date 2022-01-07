
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int dummy; } ;


 int FSHTTY ;
 int SIGTTOU ;
 int SIG_IGN ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int signal (int ,int ) ;
 int tcgetpgrp (int ) ;
 int tcsetpgrp (int ,int) ;

__attribute__((used)) static void
setttypgrp(int pgrp)
{
    if (tcgetpgrp(FSHTTY) != pgrp) {
 (void) tcsetpgrp(FSHTTY, pgrp);




    }
}
