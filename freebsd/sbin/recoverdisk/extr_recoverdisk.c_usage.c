
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr, "usage: recoverdisk [-b bigsize] [-r readlist] "
     "[-s interval] [-w writelist] source [destination]\n");
 exit(1);
}
