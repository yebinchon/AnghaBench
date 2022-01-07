
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
 fprintf(stderr,
  "usage:  rtquery [-np1] [-r tgt_rt] [-w wtime]"
  " [-a type=passwd] host1 [host2 ...]\n"
  "\trtquery -t {on=filename|more|off|dump}"
    " host1 [host2 ...]\n");
 exit(1);
}
