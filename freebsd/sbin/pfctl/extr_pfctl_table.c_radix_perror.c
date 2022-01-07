
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fprintf (int ,char*,char*,char*) ;
 char* pfr_strerror (int ) ;
 int stderr ;

void
radix_perror(void)
{
 extern char *__progname;
 fprintf(stderr, "%s: %s.\n", __progname, pfr_strerror(errno));
}
