
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fprintf (int *,char*,char const*) ;
 char* lafe_getprogname () ;

void
usage(FILE *stream, int eval)
{
 const char *p;
 p = lafe_getprogname();
 fprintf(stream,
     "Usage: %s [-h] [--help] [--version] [--] [filenames...]\n", p);
 exit(eval);
}
