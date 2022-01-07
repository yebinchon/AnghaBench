
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int PF_UNIX ;
 int SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 int abort () ;
 int close (int) ;
 int errno ;
 int fork () ;
 int socketpair (int ,int,int ,int*) ;
 int zygote_main (int) ;
 int zygote_sock ;

int
zygote_init(void)
{
 int serrno, sp[2];
 pid_t pid;

 if (socketpair(PF_UNIX, SOCK_STREAM | SOCK_NONBLOCK, 0, sp) == -1)
  return (-1);

 pid = fork();
 switch (pid) {
 case -1:

  serrno = errno;
  close(sp[0]);
  close(sp[1]);
  errno = serrno;
  return (-1);
 case 0:

  close(sp[0]);
  zygote_main(sp[1]);

  abort();
 default:

  zygote_sock = sp[0];
  close(sp[1]);
  return (0);
 }

}
