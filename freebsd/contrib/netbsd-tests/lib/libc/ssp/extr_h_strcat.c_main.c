
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

int
main(int argc, char *argv[])
{
 char b[10];
 (void)strcpy(b, "1");
 (void)strcat(b, argv[1]);

 (void)printf("%s\n", b);
 return 0;
}
