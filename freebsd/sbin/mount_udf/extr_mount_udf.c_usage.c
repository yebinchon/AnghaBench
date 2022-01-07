
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(void)
{
 (void)fprintf(stderr,
  "usage: mount_udf [-v] [-o options] [-C charset] special node\n");
 exit(EX_USAGE);
}
