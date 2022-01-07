
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int interactive ;
 char* onoff (int) ;
 int printf (char*,char*) ;

void
setprompt(int argc, char **argv)
{

 interactive = !interactive;
 printf("Interactive mode %s.\n", onoff(interactive));
 code = interactive;
}
