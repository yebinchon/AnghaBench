
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int interactive ;
 int togglevar (int,char**,int *,char*) ;

void
setprompt(int argc, char *argv[])
{

 code = togglevar(argc, argv, &interactive, "Interactive mode");
}
