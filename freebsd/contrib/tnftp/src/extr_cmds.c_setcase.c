
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int mcase ;
 int togglevar (int,char**,int *,char*) ;

void
setcase(int argc, char *argv[])
{

 code = togglevar(argc, argv, &mcase, "Case mapping");
}
