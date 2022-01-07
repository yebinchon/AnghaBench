
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage()
{

 fprintf(stderr, "usage: %s [-bsdftl] [-c hashbuckets] [-m maxreqsize] "
     "[-n typename]\n       [-o mntopt] [-o puffsopt] [-p prot] "
     "[-r rootnodetype]\n       detrempe /mountpoint\n", getprogname());
 exit(1);
}
