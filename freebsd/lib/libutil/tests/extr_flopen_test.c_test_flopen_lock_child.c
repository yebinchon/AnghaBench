
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int O_CREAT ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int SIGINT ;
 int _exit (int ) ;
 int close (int volatile) ;
 int errno ;
 int flopen (char const*,int,...) ;
 int fork () ;
 int kill (int,int ) ;
 int select (int ,int ,int ,int ,int ) ;
 char* strerror (int ) ;
 int unlink (char const*) ;

const char *
test_flopen_lock_child(void)
{
 const char *fn = "test_flopen_lock_child";
 const char *result = ((void*)0);
 pid_t pid;
 volatile int fd1, fd2;

 unlink(fn);
 fd1 = flopen(fn, O_RDWR|O_CREAT, 0640);
 if (fd1 < 0) {
  result = strerror(errno);
 } else {
  pid = fork();
  if (pid == -1) {
   result = strerror(errno);
  } else if (pid == 0) {
   select(0, 0, 0, 0, 0);
   _exit(0);
  }
  close(fd1);
  if ((fd2 = flopen(fn, O_RDWR|O_NONBLOCK)) != -1) {
   result = "second open succeeded";
   close(fd2);
  }
  kill(pid, SIGINT);
 }
 unlink(fn);
 return (result);
}
