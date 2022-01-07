
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_conf {int md_type; int md_size; int md_addr; } ;
typedef int pthread_t ;


 int MDSIZE ;
 int MD_SETCONF ;
 int MD_UMEM_SERVER ;
 int O_RDWR ;
 int REQUIRE (int,char*) ;
 int calloc (int,int ) ;
 int err (int,char*) ;
 int errno ;
 int exit (int) ;
 int prober ;
 int pthread_create (int *,int *,int ,char*) ;
 int pthread_detach (int ) ;
 int rump_daemonize_begin () ;
 int rump_daemonize_done (int ) ;
 int rump_init () ;
 int rump_init_server (char*) ;
 int rump_sys_ioctl (int,int ,struct md_conf*) ;
 int rump_sys_open (char*,int ) ;

int
main(int argc, char *argv[])
{
 pthread_t pt;
 struct md_conf md;
 int fd, error;

 if (argc != 2)
  exit(1);

 md.md_addr = calloc(1, MDSIZE);
 md.md_size = MDSIZE;
 md.md_type = MD_UMEM_SERVER;

 error = rump_daemonize_begin();
 REQUIRE(error, "rump_daemonize_begin");

 error = rump_init();
 REQUIRE(error, "rump_init");

 error = rump_init_server("unix://commsock");
 REQUIRE(error, "init server");

 if ((fd = rump_sys_open(argv[1], O_RDWR)) == -1)
  err(1, "open");
 error = pthread_create(&pt, ((void*)0), prober, argv[1]);
 REQUIRE(error, "pthread_create");
 pthread_detach(pt);

 if (rump_sys_ioctl(fd, MD_SETCONF, &md) == -1) {
  rump_daemonize_done(errno);
  exit(1);
 }

 return 0;
}
