
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc2 {int p_nlwps; } ;
typedef int ssize_t ;
typedef int pthread_t ;
typedef int pid_t ;
typedef int i ;


 scalar_t__ EBADF ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int NTHR ;
 int P1_0 ;
 int P1_1 ;
 int P2_0 ;
 int P2_1 ;
 int SAY (char*,...) ;
 int atoi (char*) ;
 int canreturn ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int getproc (int ,struct kinfo_proc2*) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 int pthread_join (int ,int *) ;
 int rump_sys_close (int) ;
 int rump_sys_fcntl (int,int ,int ) ;
 int rump_sys_getpid () ;
 int rump_sys_pipe (int*) ;
 int rump_sys_read (int,int*,int) ;
 int rump_sys_write (int,int*,int) ;
 int rumpclient_exec (char*,char**,char**) ;
 int rumpclient_init () ;
 int sprintf (char*,char*,int) ;
 int usleep (int) ;
 int wrk ;

int
main(int argc, char *argv[], char *envp[])
{
 struct kinfo_proc2 p;
 char *execarg[3];
 int p1[2], p2[2];
 pid_t mypid;
 pthread_t pt;
 ssize_t n;
 int i, execd;
 char nexec[16];

 if (argc > 1)
  execd = atoi(argv[1]);
 else
  execd = 0;
 sprintf(nexec, "%d", execd+1);
 SAY("execd: %d\n", execd);

 if (rumpclient_init() == -1) {
  if (execd)
   err(1, "init execd");
  else
   err(1, "init");
 }
 mypid = rump_sys_getpid();
 SAY("rumpclient_init finished.\n");

 if (execd) {
  canreturn = 1;
  errno = pthread_create(&pt, ((void*)0),
      wrk, (void *)(uintptr_t)P2_0);
  if (errno != 0)
   err(1, "exec pthread_create");
  SAY("startup pthread_create finished.\n");

  i = 37;
  rump_sys_write(P2_1, &i, sizeof(i));
  pthread_join(pt, ((void*)0));
  SAY("startup pthread_join finished.\n");

  n = rump_sys_read(P1_0, &i, sizeof(i));
  if (n != -1 || errno != EBADF)
   errx(1, "post-exec cloexec works");
  SAY("startup rump_sys_read finished.\n");

  getproc(mypid, &p);
  SAY("startup getproc finished.\n");
  if (p.p_nlwps != 2)
   errx(1, "invalid nlwps: %lld", (long long)p.p_nlwps);


  if (execd > 10) {
   SAY("done.\n");
   exit(0);
  }

  rump_sys_close(P2_0);
  rump_sys_close(P2_1);
 }

 SAY("making pipes...\n");

 if (rump_sys_pipe(p1) == -1)
  err(1, "pipe1");
 if (p1[0] != P1_0 || p1[1] != P1_1)
  errx(1, "p1 assumptions failed %d %d", p1[0], p1[1]);
 if (rump_sys_pipe(p2) == -1)
  err(1, "pipe1");
 if (p2[0] != P2_0 || p2[1] != P2_1)
  errx(1, "p2 assumptions failed");
 if (rump_sys_fcntl(p1[0], F_SETFD, FD_CLOEXEC) == -1)
  err(1, "cloexec");
 if (rump_sys_fcntl(p1[1], F_SETFD, FD_CLOEXEC) == -1)
  err(1, "cloexec");

 SAY("making threads...\n");

 for (i = 0; i < NTHR; i++) {
  errno = pthread_create(&pt, ((void*)0),
      wrk, (void *)(uintptr_t)p1[0]);
  if (errno != 0)
   err(1, "pthread_create 1 %d", i);
 }

 for (i = 0; i < NTHR; i++) {
  errno = pthread_create(&pt, ((void*)0),
      wrk, (void *)(uintptr_t)p2[0]);
  if (errno != 0)
   err(1, "pthread_create 2 %d", i);
 }

 SAY("waiting for threads to start...\n");


 for (;;) {
  getproc(mypid, &p);
  SAY("getproc finished.\n");
  if (p.p_nlwps == 2*NTHR + 2)
   break;
  usleep(10000);
 }

 SAY("making some more threads start...\n");





 for (i = 0; i < 3*NTHR; i++) {
  errno = pthread_create(&pt, ((void*)0),
      wrk, (void *)(uintptr_t)p1[0]);
  if (errno != 0)
   err(1, "pthread_create 3 %d", i);
 }

 SAY("calling exec...\n");


 execarg[0] = argv[0];
 execarg[1] = nexec;
 execarg[2] = ((void*)0);
 if (rumpclient_exec(argv[0], execarg, envp) == -1)
  err(1, "exec");
}
