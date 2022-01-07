
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

void
print_usage(void)
{
 printf(
 "usage: smbutil print [connection options] //user@server/share\n"
 );
 exit(1);
}
