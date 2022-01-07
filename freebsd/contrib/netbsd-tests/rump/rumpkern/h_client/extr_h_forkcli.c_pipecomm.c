
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rumpclient_fork {int dummy; } ;
typedef int buf ;


 int TESTSLEN ;
 int TESTSTR ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int fork () ;
 int memset (char*,int ,int) ;
 int rump_sys_pipe (int*) ;
 int rump_sys_read (int,char*,int ) ;
 int rump_sys_write (int,int ,int ) ;
 int rumpclient_fork_init (struct rumpclient_fork*) ;
 struct rumpclient_fork* rumpclient_prefork () ;
 int strcmp (int ,char*) ;
 int wait (int*) ;

__attribute__((used)) static void
pipecomm(void)
{
 struct rumpclient_fork *rf;
 char buf[TESTSLEN+1];
 int pipetti[2];
 int status;

 if (rump_sys_pipe(pipetti) == -1)
  errx(1, "pipe");

 if ((rf = rumpclient_prefork()) == ((void*)0))
  err(1, "prefork");

 switch (fork()) {
 case -1:
  err(1, "fork");
  break;
 case 0:
  if (rumpclient_fork_init(rf) == -1)
   err(1, "postfork init failed");

  memset(buf, 0, sizeof(buf));
  if (rump_sys_read(pipetti[0], buf, TESTSLEN) != TESTSLEN)
   err(1, "pipe read");
  if (strcmp(TESTSTR, buf) != 0)
   errx(1, "teststring doesn't match, got %s", buf);
  break;
 default:
  if (rump_sys_write(pipetti[1], TESTSTR, TESTSLEN) != TESTSLEN)
   err(1, "pipe write");
  if (wait(&status) == -1)
   err(1, "wait failed");
  if (!WIFEXITED(status) || WEXITSTATUS(status) != 0)
   errx(1, "child exited with status %d", status);
  break;
 }
}
