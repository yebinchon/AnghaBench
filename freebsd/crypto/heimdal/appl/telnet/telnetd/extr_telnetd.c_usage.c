
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(int exit_code)
{
    fprintf(stderr, "Usage: telnetd");
    fprintf(stderr, " [--help]");
    fprintf(stderr, " [--version]");



    fprintf(stderr, " [-debug]");






    fprintf(stderr, " [-h]");
    fprintf(stderr, " [-L login]");
    fprintf(stderr, " [-n]");



    fprintf(stderr, "\n\t");






    fprintf(stderr, " [-u utmp_hostname_length] [-U]");
    fprintf(stderr, " [port]\n");
    exit(exit_code);
}
