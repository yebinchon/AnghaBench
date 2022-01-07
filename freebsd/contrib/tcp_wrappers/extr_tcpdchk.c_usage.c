
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* myname ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
    fprintf(stderr, "usage: %s [-a] [-d] [-i inet_conf] [-v]\n", myname);
    fprintf(stderr, "	-a: report rules with implicit \"ALLOW\" at end\n");
    fprintf(stderr, "	-d: use allow/deny files in current directory\n");
    fprintf(stderr, "	-i: location of inetd.conf file\n");
    fprintf(stderr, "	-v: list all rules\n");
    exit(1);
}
