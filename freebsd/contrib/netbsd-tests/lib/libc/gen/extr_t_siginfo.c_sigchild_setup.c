
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_max; int rlim_cur; } ;
typedef int sigset_t ;


 int RLIMIT_CORE ;
 int SIGCHLD ;
 int SIG_BLOCK ;
 int getrlimit (int ,struct rlimit*) ;
 int setchildhandler (int ) ;
 int setrlimit (int ,struct rlimit*) ;
 int sigaddset (int *,int ) ;
 int sigchild_action ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static void
sigchild_setup(void)
{
 sigset_t set;
 struct rlimit rlim;

 (void)getrlimit(RLIMIT_CORE, &rlim);
 rlim.rlim_cur = rlim.rlim_max;
 (void)setrlimit(RLIMIT_CORE, &rlim);

 setchildhandler(sigchild_action);
 sigemptyset(&set);
 sigaddset(&set, SIGCHLD);
 sigprocmask(SIG_BLOCK, &set, ((void*)0));
}
