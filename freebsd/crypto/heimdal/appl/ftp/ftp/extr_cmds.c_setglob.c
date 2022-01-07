
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int doglob ;
 char* onoff (int) ;
 int printf (char*,char*) ;

void
setglob(int argc, char **argv)
{

 doglob = !doglob;
 printf("Globbing %s.\n", onoff(doglob));
 code = doglob;
}
