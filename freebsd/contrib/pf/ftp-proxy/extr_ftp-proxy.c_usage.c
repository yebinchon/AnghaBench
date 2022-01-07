
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __progname ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
usage(void)
{
 fprintf(stderr, "usage: %s [-6Adrv] [-a address] [-b address]"
     " [-D level] [-m maxsessions]\n                 [-P port]"
     " [-p port] [-q queue] [-R address] [-T tag]\n"
            "                 [-t timeout]\n", __progname);
 exit(1);
}
