
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOG_ERR ;
 int errno ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fopen (scalar_t__,char*) ;
 int fprintf (int *,char*,int) ;
 int getpid () ;
 scalar_t__ pidfile ;
 int remove_pidfile () ;
 int syslog (int ,char*,scalar_t__) ;

__attribute__((used)) static void write_pidfile(void)
{
 FILE *f;
 if (pidfile) {
  remove_pidfile();
  f = fopen(pidfile, "w");
  if (f) {
   fprintf(f, "%d\n", getpid());
   fclose(f);
  } else {
   syslog(LOG_ERR, "Failed to write pidfile : %s\n",
    pidfile);
   exit(errno);
  }
 }
}
