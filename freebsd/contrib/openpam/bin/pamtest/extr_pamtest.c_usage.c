
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "usage: pamtest %s service command ...\n",
     "[-dkMPsv] [-H rhost] [-h host] [-t tty] [-U ruser] [-u user]");
 exit(1);
}
