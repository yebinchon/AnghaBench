
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NSIG ;
 int STALL_TIMEOUT ;
 int _exit (int) ;
 int emergency (char*,char*) ;
 int sleep (int ) ;
 char** sys_siglist ;

__attribute__((used)) static void
disaster(int sig)
{

 emergency("fatal signal: %s",
     (unsigned)sig < NSIG ? sys_siglist[sig] : "unknown signal");

 sleep(STALL_TIMEOUT);
 _exit(sig);
}
