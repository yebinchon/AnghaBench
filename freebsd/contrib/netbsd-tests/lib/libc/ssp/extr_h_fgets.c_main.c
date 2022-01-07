
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int fgets (char*,int,int ) ;
 int printf (char*,char*) ;
 int stdin ;

int
main(int argc, char *argv[])
{
 char b[10];
 int len = atoi(argv[1]);
 (void)fgets(b, len, stdin);
 (void)printf("%s\n", b);

 return 0;
}
