
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* getprogname () ;
 int stderr ;

void
usage(void)
{

 fprintf(stderr, "usage: %s [-bdqu] ", getprogname());
 fprintf(stderr, "[-c conffile] [-l leasefile] interface\n");
 exit(1);
}
