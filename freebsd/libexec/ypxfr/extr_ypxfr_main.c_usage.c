
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YPXFR_BADARGS ;
 scalar_t__ _rpcpmstart ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;
 int ypxfr_exit (int ,int *) ;

__attribute__((used)) static void
usage(void)
{
 if (_rpcpmstart) {
  ypxfr_exit(YPXFR_BADARGS,((void*)0));
 } else {
  fprintf(stderr, "%s\n%s\n%s\n",
 "usage: ypxfr [-f] [-c] [-d target domain] [-h source host]",
 "             [-s source domain] [-p path]",
 "             [-C taskid program-number ipaddr port] mapname");
  exit(1);
 }
}
