
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(void)
{
 fprintf(stderr, "usage: mandocd [-I os=name] [-T output] socket_fd\n");
 exit(1);
}
