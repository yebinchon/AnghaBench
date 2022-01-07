
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X_STARTUP ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
  "usage: dump [-0123456789acLnSu] [-B records] [-b blocksize] [-C cachesize]\n"
  "            [-D dumpdates] [-d density] [-f file | -P pipecommand] [-h level]\n"
  "            [-s feet] [-T date] filesystem\n"
  "       dump -W | -w\n");
 exit(X_STARTUP);
}
