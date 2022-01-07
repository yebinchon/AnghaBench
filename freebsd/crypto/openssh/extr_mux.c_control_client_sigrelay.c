
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int kill (int,int) ;
 int muxserver_pid ;

__attribute__((used)) static void
control_client_sigrelay(int signo)
{
 int save_errno = errno;

 if (muxserver_pid > 1)
  kill(muxserver_pid, signo);

 errno = save_errno;
}
