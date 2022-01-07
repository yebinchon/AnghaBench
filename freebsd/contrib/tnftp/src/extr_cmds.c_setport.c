
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int sendport ;
 int togglevar (int,char**,int *,char*) ;

void
setport(int argc, char *argv[])
{

 code = togglevar(argc, argv, &sendport, "Use of PORT/LPRT cmds");
}
