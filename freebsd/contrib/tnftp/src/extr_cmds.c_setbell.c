
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bell ;
 int code ;
 int togglevar (int,char**,int *,char*) ;

void
setbell(int argc, char *argv[])
{

 code = togglevar(argc, argv, &bell, "Bell mode");
}
