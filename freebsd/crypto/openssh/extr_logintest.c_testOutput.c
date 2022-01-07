
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int testLineName (char*) ;

int
testOutput()
{
 printf("**\n** Testing linename functions\n**\n");
 testLineName("/dev/pts/1");
 testLineName("pts/1");
 testLineName("pts/999");
 testLineName("/dev/ttyp00");
 testLineName("ttyp00");

 return 1;
}
