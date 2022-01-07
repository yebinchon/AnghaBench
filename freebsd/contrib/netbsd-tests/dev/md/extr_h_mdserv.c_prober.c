
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;


 int ENXIO ;
 int EPIPE ;
 int O_RDONLY ;
 int REQUIRE (int,char*) ;
 int errno ;
 int exit (int) ;
 int rump_daemonize_done (int) ;
 int rump_sys_open (void*,int ) ;
 int rump_sys_read (int,char*,int) ;
 int usleep (int) ;

__attribute__((used)) static void *
prober(void *arg)
{
 int fd, error;
 char buf[4];
 ssize_t n;

 fd = rump_sys_open(arg, O_RDONLY);
 for (;;) {
  n = rump_sys_read(fd, buf, sizeof(buf));

  switch (n) {
  case 4:
   error = 0;
   goto out;

  case -1:
   if (errno == ENXIO) {
    usleep(1000);
    continue;
   }


  default:
   error = EPIPE;
   goto out;
  }
 }
 out:

 error = rump_daemonize_done(error);
 REQUIRE(error, "rump_daemonize_done");

 if (error)
  exit(1);

 return ((void*)0);
}
