
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void
usage(const char *pname)
{
 fprintf(stderr,
 "usage: %s [-eiou] [-c command] [-l nloops] [-m mask] [-s sleeptime]\n"
 "       [-U unit] counter\n",
  pname);
 exit(1);
}
