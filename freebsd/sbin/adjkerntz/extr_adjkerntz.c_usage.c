
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "%s\n%s\n%s\n%s\n",
  "usage: adjkerntz -i",
  "\t\t(initial call from /etc/rc)",
  "       adjkerntz -a [-s]",
  "\t\t(adjustment call, -s for sleep/retry mode)");
 exit(2);
}
