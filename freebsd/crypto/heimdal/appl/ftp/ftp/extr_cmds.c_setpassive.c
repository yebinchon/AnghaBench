
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 char* onoff (int) ;
 int passivemode ;
 int printf (char*,char*) ;

void
setpassive(int argc, char **argv)
{

 passivemode = !passivemode;
 printf("Passive mode %s.\n", onoff(passivemode));
 code = passivemode;
}
