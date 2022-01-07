
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int FILE ;


 int SIGTERM ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fscanf (int *,char*,int *) ;
 int kill (int ,int ) ;
 int pidfile ;
 int unlink (int ) ;
 int waitpid (int ,int *,int ) ;

__attribute__((used)) static void
cleanup(void)
{
 FILE *f;
 pid_t pid;

 f = fopen(pidfile, "r");
 if (f == ((void*)0))
  return;
 if (fscanf(f, "%d", &pid) == 1) {
  kill(pid, SIGTERM);
  waitpid(pid, ((void*)0), 0);
 }
 fclose(f);
 unlink(pidfile);
}
