
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BINM_CATMAN ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
usage(void)
{
 fprintf(stderr, "usage: %s [-I os=name] [-T output] "
     "srcdir dstdir\n", BINM_CATMAN);
 exit(1);
}
