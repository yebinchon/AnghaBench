
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_SETMASK ;
 int _panic (char*,int ) ;
 int bset ;
 int errno ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int strerror (int ) ;

__attribute__((used)) static void
poll_unblocksig(void)
{
 if(sigprocmask(SIG_SETMASK, &bset, ((void*)0)))
  _panic("sigprocmask(SIG_SETMASK): %s", strerror(errno));
}
