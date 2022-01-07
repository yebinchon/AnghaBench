
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 scalar_t__ EOF ;
 int fclose (int *) ;
 int feof (int *) ;
 int fflush (int ) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fputs (char*,int ) ;
 int stdout ;

__attribute__((used)) static void
print_message(const char *filename)
{
 char buf[1024];
 FILE *f;

 if ((f = fopen(filename, "r")) == ((void*)0))
  return;

 do {
  if (fgets(buf, sizeof(buf), f) == ((void*)0)) {
   fflush(stdout);
   fclose(f);
   return;
  }
 } while (fputs(buf, stdout) != EOF && !feof(f));
 fflush(stdout);
 fclose(f);
}
