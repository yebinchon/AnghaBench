
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "%s\n%s\n%s\n%s\n%s\n%s\n",
"usage: tunefs [-A] [-a enable | disable] [-e maxbpg] [-f avgfilesize]",
"              [-J enable | disable] [-j enable | disable] [-k metaspace]",
"              [-L volname] [-l enable | disable] [-m minfree]",
"              [-N enable | disable] [-n enable | disable]",
"              [-o space | time] [-p] [-s avgfpdir] [-t enable | disable]",
"              special | filesystem");
 exit(2);
}
