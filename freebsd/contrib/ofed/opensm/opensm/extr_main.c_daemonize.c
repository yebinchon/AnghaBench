
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int osm_opensm_t ;
typedef int FILE ;


 int O_WRONLY ;
 int close (int) ;
 int dup2 (int,int) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (scalar_t__,char*) ;
 scalar_t__ fork () ;
 int fprintf (int *,char*,int) ;
 int getpid () ;
 int open (char*,int ) ;
 int perror (char*) ;
 scalar_t__ pidfile ;
 int remove_pidfile () ;
 int setsid () ;

__attribute__((used)) static int daemonize(osm_opensm_t * osm)
{
 pid_t pid;
 int fd;
 FILE *f;

 fd = open("/dev/null", O_WRONLY);
 if (fd < 0) {
  perror("open");
  return -1;
 }

 if ((pid = fork()) < 0) {
  perror("fork");
  exit(-1);
 } else if (pid > 0)
  exit(0);

 setsid();

 if ((pid = fork()) < 0) {
  perror("fork");
  exit(-1);
 } else if (pid > 0)
  exit(0);

 if (pidfile) {
  remove_pidfile();
  f = fopen(pidfile, "w");
  if (f) {
   fprintf(f, "%d\n", getpid());
   fclose(f);
  } else {
   perror("fopen");
   exit(1);
  }
 }

 close(0);
 close(1);
 close(2);

 dup2(fd, 0);
 dup2(fd, 1);
 dup2(fd, 2);

 return 0;
}
