
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage()
{
 fprintf(stderr, "%s%s",
  "usage: fdisk [-BIaipqstu] [-b bootcode] [-1234] [disk]\n",
   "       fdisk -f configfile [-itv] [disk]\n");
        exit(1);
}
