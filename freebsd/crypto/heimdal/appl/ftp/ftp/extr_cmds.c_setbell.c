
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bell ;
 int code ;
 char* onoff (int) ;
 int printf (char*,char*) ;

void
setbell(int argc, char **argv)
{

 bell = !bell;
 printf("Bell mode %s.\n", onoff(bell));
 code = bell;
}
