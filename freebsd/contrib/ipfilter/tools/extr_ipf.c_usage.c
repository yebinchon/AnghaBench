
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void usage()
{
 fprintf(stderr, "usage: ipf [-6AdDEInoPrRsvVyzZ] %s %s %s\n",
  "[-l block|pass|nomatch|state|nat]", "[-cc] [-F i|o|a|s|S|u]",
  "[-f filename] [-T <tuneopts>]");
 exit(1);
}
