
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr, "Usage: %s [-f <hostsfile>] "
     "[-t <any|dns|nis|files>] "
     "[-46a] <name|address>\n", getprogname());
 exit(EXIT_FAILURE);
}
