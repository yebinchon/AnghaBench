
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gets (char*) ;
 int printf (char*,char*) ;

int
main(int argc, char *argv[])
{
 char b[10];
 (void)gets(b);
 (void)printf("%s\n", b);
 return 0;
}
