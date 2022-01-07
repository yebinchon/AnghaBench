
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;

void
usage(void)
{

 (void)fprintf(stderr, "%s\n%s\n%s\n",
"usage: mount [-adflpruvw] [-F fstab] [-o options] [-t ufs | external_type]",
"       mount [-dfpruvw] special | node",
"       mount [-dfpruvw] [-o options] [-t ufs | external_type] special node");
 exit(1);
}
