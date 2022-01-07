
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

void
usage(void)
{

 (void)fprintf(stderr, "%s\n%s\n",
     "usage: umount [-fNnv] special ... | node ... | fsid ...",
     "       umount -a | -A [-F fstab] [-fnv] [-h host] [-t type]");
 exit(1);
}
