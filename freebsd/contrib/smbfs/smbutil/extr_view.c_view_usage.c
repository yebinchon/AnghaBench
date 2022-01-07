
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

void
view_usage(void)
{
 printf(
 "usage: smbutil view [connection options] //[user@]server\n"
 );
 exit(1);
}
