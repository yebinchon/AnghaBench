
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int crflag ;
 char* onoff (int) ;
 int printf (char*,char*) ;

void
setcr(int argc, char **argv)
{

 crflag = !crflag;
 printf("Carriage Return stripping %s.\n", onoff(crflag));
 code = crflag;
}
