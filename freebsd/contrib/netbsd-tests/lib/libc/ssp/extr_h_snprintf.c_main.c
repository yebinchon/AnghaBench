
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t atoi (char*) ;
 int printf (char*,char*) ;
 int snprintf (char*,size_t,char*,char*) ;

int
main(int argc, char *argv[])
{
 char b[10];
 size_t len = atoi(argv[1]);





 (void)snprintf(b, len, "%s", "0123456789");

 (void)printf("%s\n", b);
 return 0;
}
