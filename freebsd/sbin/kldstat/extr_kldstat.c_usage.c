
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
    fprintf(stderr, "usage: kldstat [-d] [-h] [-q] [-v] [-i id] [-n filename]\n");
    fprintf(stderr, "       kldstat [-d] [-q] [-m modname]\n");
    exit(1);
}
