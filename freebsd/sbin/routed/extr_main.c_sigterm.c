
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_DFL ;
 int signal (int,int ) ;
 int stopint ;

__attribute__((used)) static void
sigterm(int sig)
{
 stopint = sig;
 (void)signal(sig, SIG_DFL);
}
