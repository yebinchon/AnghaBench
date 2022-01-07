
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int getcwd (char*,int) ;
 int printf (char*,...) ;
 scalar_t__ rel2abs (char*,char*,char*,int) ;
 int stderr ;
 int strcpy (char*,char*) ;

int
main(int argc, char *argv[])
{
 char result[MAXPATHLEN];
 char cwd[MAXPATHLEN];

 if (argc < 2) {
  fprintf(stderr, "usage: rel2abs path [base]\n");
  exit(1);
 }
 if (argc == 2) {
  if (!getcwd(cwd, MAXPATHLEN)) {
   fprintf(stderr, "cannot get current directory.\n");
   exit(1);
  }
 } else
  strcpy(cwd, argv[2]);

 if (rel2abs(argv[1], cwd, result, MAXPATHLEN)) {
  printf("%s\n", result);
 } else
  printf("ERROR\n");
 exit(0);
}
