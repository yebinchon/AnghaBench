
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOG_WARNING ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int fclose (int *) ;
 int fprintf (int *,char*,int) ;
 int logmsg (int ,char*) ;
 int printf (char*,int) ;
 scalar_t__ verbose ;
 int * xfopenat (int,char*,int,char*,int) ;

__attribute__((used)) static void
writebounds(int savedirfd, int bounds)
{
 FILE *fp;

 if ((fp = xfopenat(savedirfd, "bounds", O_WRONLY | O_CREAT | O_TRUNC,
     "w", 0644)) == ((void*)0)) {
  logmsg(LOG_WARNING, "unable to write to bounds file: %m");
  return;
 }

 if (verbose)
  printf("bounds number: %d\n", bounds);

 fprintf(fp, "%d\n", bounds);
 fclose(fp);
}
