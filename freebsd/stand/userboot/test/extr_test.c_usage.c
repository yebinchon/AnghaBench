
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

void
usage()
{

 printf("usage: [-b <userboot shared object>] [-d <disk image path>] [-h <host filesystem path>\n");
 exit(1);
}
