
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void
usage(const char* cmd)
{
 fprintf(stderr, "%s: daemon for UFS file system freeze/thaw\n"
     " -d : enable debug log printing. Default is disabled.\n"
     " -n : run as a regular process instead of a daemon. Default is a daemon.\n"
     " -h : print usage.\n", cmd);
 exit(1);
}
