
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __progname ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "usage:"
"\t%s [-r] [-c | -h] disk\n"
"\t\t(to read label)\n"
"\t%s -B [-b boot1] [-n] disk\n"
"\t\t(to install boot program only)\n"
"\t%s -R [-B [-b boot1]] [-r] [-n] [-c] disk protofile\n"
"\t\t(to restore label)\n"
"\t%s -e [-B [-b boot1]] [-r] [-n] [-c] disk\n"
"\t\t(to edit label)\n"
"\t%s -w [-B [-b boot1]] [-r] [-n] disk type\n"
"\t\t(to write default label)\n",
      __progname,
      __progname,
      __progname,
      __progname,
      __progname);
 exit(1);
}
