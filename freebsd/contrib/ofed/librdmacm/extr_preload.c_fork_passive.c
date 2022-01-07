
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sockaddr_in6 {int sin6_family; int sin6_addr; scalar_t__ sin6_scope_id; scalar_t__ sin6_flowinfo; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sem_t ;
struct TYPE_3__ {int (* getsockname ) (int,struct sockaddr*,int*) ;int (* write ) (int,scalar_t__*,int) ;int (* close ) (int) ;int (* shutdown ) (int,int ) ;} ;


 int O_CREAT ;
 int O_RDWR ;
 int * SEM_FAILED ;
 int SHUT_RDWR ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int S_IRWXG ;
 int S_IRWXU ;
 int copysockopts (int,int,int *,TYPE_1__*) ;
 int fd_getd (int) ;
 int fd_normal ;
 int fd_ready ;
 int fd_rsocket ;
 int fd_store (int,int,int ,int ) ;
 int memset (int *,int ,int) ;
 int raccept (int,int *,int *) ;
 int rbind (int,struct sockaddr*,int) ;
 int rclose (int) ;
 TYPE_1__ real ;
 int rlisten (int,int) ;
 int rs ;
 int rsetsockopt (int,int ,int ,int*,int) ;
 int rsocket (int ,int ,int ) ;
 int sem_close (int *) ;
 int * sem_open (char*,int,int,int) ;
 int sem_post (int *) ;
 int sem_wait (int *) ;
 int set_rsocket_options (int) ;
 int stub1 (int,struct sockaddr*,int*) ;
 int stub2 (int,scalar_t__*,int) ;
 int stub3 (int,int ) ;
 int stub4 (int) ;

__attribute__((used)) static void fork_passive(int socket)
{
 struct sockaddr_in6 sin6;
 sem_t *sem;
 int lfd, sfd, dfd, ret, param;
 socklen_t len;
 uint32_t msg;

 sfd = fd_getd(socket);

 len = sizeof sin6;
 ret = real.getsockname(sfd, (struct sockaddr *) &sin6, &len);
 if (ret)
  goto out;
 sin6.sin6_flowinfo = 0;
 sin6.sin6_scope_id = 0;
 memset(&sin6.sin6_addr, 0, sizeof sin6.sin6_addr);

 sem = sem_open("/rsocket_fork", O_CREAT | O_RDWR,
         S_IRWXU | S_IRWXG, 1);
 if (sem == SEM_FAILED) {
  ret = -1;
  goto out;
 }

 lfd = rsocket(sin6.sin6_family, SOCK_STREAM, 0);
 if (lfd < 0) {
  ret = lfd;
  goto sclose;
 }

 param = 1;
 rsetsockopt(lfd, SOL_SOCKET, SO_REUSEADDR, &param, sizeof param);

 sem_wait(sem);
 ret = rbind(lfd, (struct sockaddr *) &sin6, sizeof sin6);
 if (ret)
  goto lclose;

 ret = rlisten(lfd, 1);
 if (ret)
  goto lclose;

 msg = 0;
 len = real.write(sfd, &msg, sizeof msg);
 if (len != sizeof msg)
  goto lclose;

 dfd = raccept(lfd, ((void*)0), ((void*)0));
 if (dfd < 0) {
  ret = dfd;
  goto lclose;
 }

 set_rsocket_options(dfd);
 copysockopts(dfd, sfd, &rs, &real);
 real.shutdown(sfd, SHUT_RDWR);
 real.close(sfd);
 fd_store(socket, dfd, fd_rsocket, fd_ready);

lclose:
 rclose(lfd);
 sem_post(sem);
sclose:
 sem_close(sem);
out:
 if (ret)
  fd_store(socket, sfd, fd_normal, fd_ready);
}
