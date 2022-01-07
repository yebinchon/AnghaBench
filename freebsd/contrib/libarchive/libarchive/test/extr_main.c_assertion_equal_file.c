
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff2 ;
typedef int buff1 ;
typedef int FILE ;


 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fread (char*,int,int,int *) ;
 int logprintf (char*,char const*) ;
 scalar_t__ memcmp (char*,char*,int) ;

int
assertion_equal_file(const char *filename, int line, const char *fn1, const char *fn2)
{
 char buff1[1024];
 char buff2[1024];
 FILE *f1, *f2;
 int n1, n2;

 assertion_count(filename, line);

 f1 = fopen(fn1, "rb");
 f2 = fopen(fn2, "rb");
 if (f1 == ((void*)0) || f2 == ((void*)0)) {
  if (f1) fclose(f1);
  if (f2) fclose(f2);
  return (0);
 }
 for (;;) {
  n1 = (int)fread(buff1, 1, sizeof(buff1), f1);
  n2 = (int)fread(buff2, 1, sizeof(buff2), f2);
  if (n1 != n2)
   break;
  if (n1 == 0 && n2 == 0) {
   fclose(f1);
   fclose(f2);
   return (1);
  }
  if (memcmp(buff1, buff2, n1) != 0)
   break;
 }
 fclose(f1);
 fclose(f2);
 failure_start(filename, line, "Files not identical");
 logprintf("  file1=\"%s\"\n", fn1);
 logprintf("  file2=\"%s\"\n", fn2);
 failure_finish(((void*)0));
 return (0);
}
