
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char const*) ;

FILE *
freopen(const char *filename, const char *mode, FILE *stream)
{
 fclose(stream);
 return (fopen(filename, mode));
}
