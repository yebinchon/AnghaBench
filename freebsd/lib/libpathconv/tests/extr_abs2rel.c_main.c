
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 scalar_t__ abs2rel (char*,char*,char*,int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int getcwd (char*,int) ;
 int printf (char*,...) ;
 int stderr ;
 int strcpy (char*,char*) ;

int
main(int argc, char *argv[])
{
 char result[MAXPATHLEN];
 char cwd[MAXPATHLEN];

 if (argc < 2) {
  fprintf(stderr, "usage: abs2rel path [base]\n");
  exit(1);
 }
 if (argc == 2) {
  if (!getcwd(cwd, MAXPATHLEN)) {
   fprintf(stderr, "cannot get current directory.\n");
   exit(1);
  }
 } else
  strcpy(cwd, argv[2]);

 if (abs2rel(argv[1], cwd, result, MAXPATHLEN)) {
  printf("%s\n", result);
 } else
  printf("ERROR\n");
 exit(0);
}
