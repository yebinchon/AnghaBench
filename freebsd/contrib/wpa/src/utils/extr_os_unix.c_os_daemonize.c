
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int dummy; } ;
typedef scalar_t__ pid_t ;
typedef int intmax_t ;
typedef int FILE ;


 scalar_t__ EEXIST ;
 scalar_t__ errno ;
 int errx (int,char*,int ) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,int) ;
 int getpid () ;
 scalar_t__ os_daemon (int ,int ) ;
 int perror (char*) ;
 struct pidfh* pidfile_open (char const*,int,scalar_t__*) ;
 int pidfile_remove (struct pidfh*) ;
 int pidfile_write (struct pidfh*) ;
 int warn (char*) ;

int os_daemonize(const char *pid_file)
{
 if (os_daemon(0, 0)) {
  perror("daemon");



  return -1;
 }


 if (pid_file) {
  FILE *f = fopen(pid_file, "w");
  if (f) {
   fprintf(f, "%u\n", getpid());
   fclose(f);
  }
 }




 return -0;

}
