
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "Usage: %s [-v] [-I include-path] [-C check-path] "
     "[-T terminfo-file] [-s pathtoslave] [-t term] "
     "commandfile\n", getprogname());
 fprintf(stderr, " where:\n");
 fprintf(stderr, "    -v enables verbose test output\n");
 fprintf(stderr, "    -T is a directory containing the terminfo.cdb "
     "file, or a file holding the terminfo description n");
 fprintf(stderr, "    -s is the path to the slave executable\n");
 fprintf(stderr, "    -t is value to set TERM to for the test\n");
 fprintf(stderr, "    -I is the directory to include files\n");
 fprintf(stderr, "    -C is the directory for config files\n");
 fprintf(stderr, "    commandfile is a file of test directives\n");
 exit(1);
}
