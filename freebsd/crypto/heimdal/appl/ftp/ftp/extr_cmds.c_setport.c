
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int sendport ;

void
setport(int argc, char **argv)
{

 sendport = !sendport;
 printf("Use of PORT cmds %s.\n", onoff(sendport));
 code = sendport;
}
