
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_req {scalar_t__ preq_rv; } ;
struct pollfd {int fd; scalar_t__ revents; int events; } ;
typedef scalar_t__ ssize_t ;
typedef int buf ;


 int POLLIN ;
 int PUFFS_MSG_MAXSIZE ;
 int dacv ;
 int dafd ;
 int damtx ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ rump_sys_poll (struct pollfd*,int,int) ;
 scalar_t__ rump_sys_read (int,char*,int) ;
 int rump_sys_write (int,char*,scalar_t__) ;

__attribute__((used)) static void *
respondthread(void *arg)
{
 char buf[PUFFS_MSG_MAXSIZE];
 struct puffs_req *preq = (void *)buf;
 struct pollfd pfd;
 ssize_t n;

 pthread_mutex_lock(&damtx);
 for (;;) {
  while (dafd == -1)
   pthread_cond_wait(&dacv, &damtx);

  while (dafd != -1) {
   pthread_mutex_unlock(&damtx);
   pfd.fd = dafd;
   pfd.events = POLLIN;
   pfd.revents = 0;
   if (rump_sys_poll(&pfd, 1, 10) == 0) {
    pthread_mutex_lock(&damtx);
    continue;
   }
   n = rump_sys_read(dafd, buf, sizeof(buf));
   if (n <= 0) {
    pthread_mutex_lock(&damtx);
    break;
   }


   preq->preq_rv = 0;
   rump_sys_write(dafd, buf, n);
   pthread_mutex_lock(&damtx);
  }
 }

 return ((void*)0);
}
