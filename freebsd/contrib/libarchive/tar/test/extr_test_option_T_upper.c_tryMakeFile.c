
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;

__attribute__((used)) static int
tryMakeFile(const char *fn)
{
 FILE *f = fopen(fn, "w");
 if (f == ((void*)0))
  return (0);
 fclose(f);
 return (1);
}
