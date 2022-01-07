
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int parse (int *) ;
 int perror (char*) ;

int
main(int argc, char *argv[])
{
 FILE *fp;

 for (; *argv != ((void*)0); ++argv) {
  if ((fp = fopen(*argv, "r")) == ((void*)0)) {
   perror(*argv);
   return (1);
  }
  parse(fp);
  (void)fclose(fp);
 }
 return (0);
}
