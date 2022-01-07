
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
usage(void)
{
 extern char *__progname;

 fprintf(stderr,
"usage: %s [-AdeghmNnOPqRrvz] [-a anchor] [-D macro=value] [-F modifier]\n"
 "\t[-f file] [-i interface] [-K host | network]\n"
 "\t[-k host | network | label | id] [-o level] [-p device]\n"
 "\t[-s modifier] [-t table -T command [address ...]] [-x level]\n",
     __progname);

 exit(1);
}
