
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_FAILURE ;
 int errx (int ,char*,...) ;
 int * fopen (char const*,char*) ;
 int fscanf (int *,char*,int*) ;
 int getpid () ;
 int printf (char*,...) ;

__attribute__((used)) static void
check_pidfile(const char *path)
{
 FILE *file;
 int pid;

 printf("Validating contents of pidfile '%s'\n", path);

 if ((file = fopen(path, "r")) == ((void*)0))
  errx(EXIT_FAILURE, "Cannot open expected pidfile '%s'", path);

 if (fscanf(file, "%d", &pid) == -1)
  errx(EXIT_FAILURE, "Failed to read pid from pidfile '%s'",
      path);

 printf("Read pid %d, current pid %d\n", pid, getpid());
 if (pid != getpid())
  errx(EXIT_FAILURE, "Pid in pidfile (%d) does not match "
      "current pid (%d)", pid, getpid());
}
