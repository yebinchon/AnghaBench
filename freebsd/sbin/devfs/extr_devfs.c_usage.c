
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

void
usage(void)
{

 fprintf(stderr, "usage: %s\n%s\n",
     "\tdevfs [-m mount-point] [-s ruleset] rule ...",
     "\tdevfs [-m mount-point] ruleset ...");
 exit(1);
}
