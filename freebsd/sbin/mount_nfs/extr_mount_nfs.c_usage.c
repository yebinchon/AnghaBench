
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr, "%s\n%s\n%s\n%s\n",
"usage: mount_nfs [-23bcdiLlNPsTU] [-a maxreadahead] [-D deadthresh]",
"                 [-g maxgroups] [-I readdirsize] [-o options] [-R retrycnt]",
"                 [-r readsize] [-t timeout] [-w writesize] [-x retrans]",
"                 rhost:path node");
 exit(1);
}
