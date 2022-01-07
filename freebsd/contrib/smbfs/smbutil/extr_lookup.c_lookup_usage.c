
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

void
lookup_usage(void)
{
 printf("usage: smbutil lookup [-w host] name\n");
 exit(1);
}
