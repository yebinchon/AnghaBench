
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGNAL ;
 int SIG_BLOCK ;
 int _panic (char*,int ) ;
 int bset ;
 int errno ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int strerror (int ) ;

__attribute__((used)) static void
poll_blocksig(void)
{
 sigset_t set;

 sigemptyset(&set);
 sigaddset(&set, SIGNAL);

 if(sigprocmask(SIG_BLOCK, &set, &bset))
  _panic("sigprocmask(SIG_BLOCK): %s", strerror(errno));
}
