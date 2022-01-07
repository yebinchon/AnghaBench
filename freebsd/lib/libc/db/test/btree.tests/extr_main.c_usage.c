
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

void
usage()
{
 (void)fprintf(stderr,
     "usage: %s [-bdlu] [-c cache] [-i file] [-p page] [file]\n",
     progname);
 exit (1);
}
