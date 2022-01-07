
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int background ;
 int daemon (int ,int ) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,int) ;
 int getpid () ;
 int pidName ;

__attribute__((used)) static void DaemonMode(void)
{
 FILE* pidFile;

 daemon (0, 0);
 background = 1;

 pidFile = fopen (pidName, "w");
 if (pidFile) {

  fprintf (pidFile, "%d\n", getpid ());
  fclose (pidFile);
 }
}
