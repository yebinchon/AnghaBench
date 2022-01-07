
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int perror (char*) ;
 char* progname ;
 int stderr ;

void
error(
 char *fmt,
 char *s1,
 char *s2
 )
{
 (void) fprintf(stderr, "%s: ", progname);
 (void) fprintf(stderr, fmt, s1, s2);
 (void) fprintf(stderr, ": ");
 perror("");
 exit(1);
}
