
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
usage(char *progname)
{
 fprintf(stderr, "usage: %s [-s num]\n", progname);
 fprintf(stderr, "-s option writes tests for sh(1), num is 1 or 2\n");
}
