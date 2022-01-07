
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
typedef int sigset_t ;
typedef int Char ;


 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIG_IGN ;
 int SIG_UNBLOCK ;
 int STRhome ;
 int STRlogout ;
 int STRnormal ;
 int STRsldtlogout ;
 int USE (int **) ;
 int VAR_READWRITE ;
 int _PATH_DOTLOGOUT ;
 scalar_t__ adrof (int ) ;
 int cleanup_pop_mark (size_t) ;
 size_t cleanup_push_mark () ;
 int do_logout ;
 int exitstat () ;
 scalar_t__ loginsh ;
 int phup_disabled ;
 int record () ;
 int setcopy (int ,int ,int ) ;
 scalar_t__ setexit () ;
 scalar_t__ setintr ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int sigprocmask (int ,int *,int *) ;
 int srccat (int ,int ) ;
 int srcfile (int ,int ,int ,int *) ;
 int varval (int ) ;

void
goodbye(Char **v, struct command *c)
{
    USE(v);
    USE(c);
    record();

    if (loginsh) {
 size_t omark;
 sigset_t set;

 sigemptyset(&set);
 signal(SIGQUIT, SIG_IGN);
 sigaddset(&set, SIGQUIT);
 sigprocmask(SIG_UNBLOCK, &set, ((void*)0));
 signal(SIGINT, SIG_IGN);
 sigaddset(&set, SIGINT);
 signal(SIGTERM, SIG_IGN);
 sigaddset(&set, SIGTERM);
 signal(SIGHUP, SIG_IGN);
 sigaddset(&set, SIGHUP);
 sigprocmask(SIG_UNBLOCK, &set, ((void*)0));
 phup_disabled = 1;
 setintr = 0;

 omark = cleanup_push_mark();
 if (setexit() == 0) {
     if (!(adrof(STRlogout)))
  setcopy(STRlogout, STRnormal, VAR_READWRITE);



     if (adrof(STRhome))
  (void) srccat(varval(STRhome), STRsldtlogout);



 }
 cleanup_pop_mark(omark);
    }
    exitstat();
}
