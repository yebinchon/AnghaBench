
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "%s\n%s\n%s\n%s\n%s\n",
  "usage: ccdconfig [-cv] ccd ileave [flags] dev ...",
  "       ccdconfig -C [-v] [-f config_file]",
  "       ccdconfig -u [-v] ccd ...",
  "       ccdconfig -U [-v] [-f config_file]",
  "       ccdconfig -g [ccd ...]");
 exit(1);
}
