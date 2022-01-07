
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __progname ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
     "usage: %s [-46cDHv] [-f file] [-p port] [-T timeout] [-t type]\n"
     "\t\t   [host | addrlist namelist]\n",
     __progname);
 exit(1);
}
