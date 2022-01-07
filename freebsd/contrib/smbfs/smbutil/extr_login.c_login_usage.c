
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

void
login_usage(void)
{
 printf(
 "usage: smbutil login [-E cs1:cs2] [-I host] [-L locale] [-M crights:srights]\n"
 "               [-N cowner:cgroup/sowner:sgroup] [-P]\n"
 "               [-R retrycount] [-T timeout]\n"
 "               [-W workgroup] //user@server\n");
 exit(1);
}
