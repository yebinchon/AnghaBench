
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MSG_ERROR ;
 scalar_t__ daemon (int ,int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,int) ;
 int getpid () ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

int os_daemonize(const char *pid_file)
{
 if (daemon(0, 0)) {
  wpa_printf(MSG_ERROR, "daemon: %s", strerror(errno));
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
