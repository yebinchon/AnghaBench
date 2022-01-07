
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage()
{
 fprintf(stderr, "usage: telnetd");







 fprintf(stderr, " [-debug]");






 fprintf(stderr, " [-h]");






 fprintf(stderr, " [-n]");
 fprintf(stderr, "\n\t");






 fprintf(stderr, " [-u utmp_hostname_length] [-U]");
 fprintf(stderr, " [port]\n");
 exit(1);
}
