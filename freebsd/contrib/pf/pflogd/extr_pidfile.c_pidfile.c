
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int FILE ;


 int _PATH_VARRUN ;
 char* __progname ;
 int asprintf (int **,char*,int ,char const*) ;
 scalar_t__ atexit (int ) ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int * fopen (int *,char*) ;
 scalar_t__ fprintf (int *,char*,long) ;
 int free (int *) ;
 scalar_t__ getpid () ;
 int pidfile_cleanup ;
 int * pidfile_path ;
 scalar_t__ pidfile_pid ;
 int unlink (int *) ;

int
pidfile(const char *basename)
{
 FILE *f;
 int save_errno;
 pid_t pid;

 if (basename == ((void*)0))
  basename = __progname;

 if (pidfile_path != ((void*)0)) {
  free(pidfile_path);
  pidfile_path = ((void*)0);
 }


 (void) asprintf(&pidfile_path, "%s%s.pid", _PATH_VARRUN, basename);
 if (pidfile_path == ((void*)0))
  return (-1);

 if ((f = fopen(pidfile_path, "w")) == ((void*)0)) {
  save_errno = errno;
  free(pidfile_path);
  pidfile_path = ((void*)0);
  errno = save_errno;
  return (-1);
 }

 pid = getpid();
 if (fprintf(f, "%ld\n", (long)pid) <= 0 || fclose(f) != 0) {
  save_errno = errno;
  (void) unlink(pidfile_path);
  free(pidfile_path);
  pidfile_path = ((void*)0);
  errno = save_errno;
  return (-1);
 }

 pidfile_pid = pid;
 if (atexit(pidfile_cleanup) < 0) {
  save_errno = errno;
  (void) unlink(pidfile_path);
  free(pidfile_path);
  pidfile_path = ((void*)0);
  pidfile_pid = 0;
  errno = save_errno;
  return (-1);
 }

 return (0);
}
