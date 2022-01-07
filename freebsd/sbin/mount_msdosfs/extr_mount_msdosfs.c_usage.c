
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;

void
usage(void)
{
 fprintf(stderr, "%s\n%s\n%s\n",
 "usage: mount_msdosfs [-9ls] [-D DOS_codepage] [-g gid] [-L locale]",
 "                     [-M mask] [-m mask] [-o options] [-u uid]",
 "		      [-W table] special node");
 exit(EX_USAGE);
}
