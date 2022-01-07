
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_pid ;
 int errno ;
 int kill (int,int) ;

__attribute__((used)) static void
sig_pass_to_chld(int sig)
{
 int oerrno = errno;

 if (child_pid != -1)
  kill(child_pid, sig);
 errno = oerrno;
}
