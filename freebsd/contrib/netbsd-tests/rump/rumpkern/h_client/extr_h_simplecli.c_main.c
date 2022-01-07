
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ rump_sys_getpid () ;
 int rumpclient_init () ;
 int usleep (int) ;

int
main(int argc, char *argv[])
{

 if (rumpclient_init() == -1)
  err(1, "rumpclient init");

 if (argc > 1) {
  for (;;) {
   rump_sys_getpid();
   usleep(10000);
  }
 } else {
  if (rump_sys_getpid() > 0)
   exit(0);
  err(1, "getpid");
 }
}
