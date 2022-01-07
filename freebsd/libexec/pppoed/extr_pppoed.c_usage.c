
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static int
usage(const char *prog)
{
  fprintf(stderr, "usage: %s [-Fd] [-P pidfile] [-a name] [-e exec | -l label]"
          " [-n ngdebug] [-p provider] interface\n", prog);
  return EX_USAGE;
}
