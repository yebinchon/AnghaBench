
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 char* modename ;
 int printf (char*,char*) ;

void
setftmode(int argc, char **argv)
{

 printf("We only support %s mode, sorry.\n", modename);
 code = -1;
}
