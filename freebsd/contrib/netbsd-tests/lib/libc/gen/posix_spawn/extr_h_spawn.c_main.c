
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 char* getprogname () ;
 int stderr ;
 unsigned long strtoul (char*,char**,int) ;

int
main(int argc, char **argv)
{
 unsigned long ret;
 char *endp;

 if (argc < 2) {
  fprintf(stderr, "usage:\n\t%s (retcode)\n", getprogname());
  exit(255);
 }
 ret = strtoul(argv[1], &endp, 10);

 fprintf(stderr, "%s exiting with status %lu\n", getprogname(), ret);
 return ret;
}
