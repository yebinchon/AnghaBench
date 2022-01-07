
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage()
{
 fprintf(stderr,
    "usage:  $s [ -c chdir ] [-d level] [-f configfile] [host...]\n");
 fprintf(stderr, "\t -c n\tset current directory\n");
 fprintf(stderr, "\t -d n\tset debug level\n");
 fprintf(stderr, "\t -f n\tconfig file name\n");
 exit(1);
}
