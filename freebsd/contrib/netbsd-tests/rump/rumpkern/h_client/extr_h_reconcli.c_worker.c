
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hostnamebuf ;


 int __arraycount (int ) ;
 int closercv ;
 int closermtx ;
 int err (int,char*) ;
 int exit (int) ;
 int goodhostname ;
 int hostnamemib ;
 int memset (char*,int ,int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int quit ;
 int riseandwhine ;
 int rump_sys___sysctl (int ,int ,char*,size_t*,int *,int ) ;
 int rump_sys_getpid () ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static void *
worker(void *arg)
{
 char hostnamebuf[128];
 size_t blen;

 pthread_mutex_lock(&closermtx);
 while (!quit) {
  pthread_mutex_unlock(&closermtx);
  if (rump_sys_getpid() == -1)
   err(1, "getpid");

  blen = sizeof(hostnamebuf);
  memset(hostnamebuf, 0, sizeof(hostnamebuf));
  if (rump_sys___sysctl(hostnamemib, __arraycount(hostnamemib),
      hostnamebuf, &blen, ((void*)0), 0) == -1)
   err(1, "sysctl");
  if (strcmp(hostnamebuf, goodhostname) != 0)
   exit(1);
  pthread_mutex_lock(&closermtx);
  riseandwhine = 1;
  pthread_cond_signal(&closercv);
 }
 riseandwhine = 1;
 pthread_cond_signal(&closercv);
 pthread_mutex_unlock(&closermtx);

 return ((void*)0);
}
