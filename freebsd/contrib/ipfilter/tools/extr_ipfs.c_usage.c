
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

void usage()
{
 fprintf(stderr, "usage: %s [-nv] -l\n", progname);
 fprintf(stderr, "usage: %s [-nv] -u\n", progname);
 fprintf(stderr, "usage: %s [-nv] [-d <dir>] -R\n", progname);
 fprintf(stderr, "usage: %s [-nv] [-d <dir>] -W\n", progname);
 fprintf(stderr, "usage: %s [-nNSv] [-f <file>] -r\n", progname);
 fprintf(stderr, "usage: %s [-nNSv] [-f <file>] -w\n", progname);
 fprintf(stderr, "usage: %s [-nNSv] -f <filename> -i <if1>,<if2>\n",
  progname);
 exit(1);
}
