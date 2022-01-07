
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
 fprintf(stderr, "%s\n%s\n%s\n%s\n",
 "usage: mount_smbfs [-E cs1:cs2] [-I host] [-L locale] [-M crights:srights]",
 "                   [-N] [-O cowner:cgroup/sowner:sgroup] [-R retrycount]",
 "                   [-T timeout] [-W workgroup] [-c case] [-d mode] [-f mode]",
 "                   [-g gid] [-n opt] [-u uid] [-U username] //user@server/share node");

 exit (1);
}
