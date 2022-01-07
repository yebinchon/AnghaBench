
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int sunique ;
 int togglevar (int,char**,int *,char*) ;

void
setsunique(int argc, char *argv[])
{

 code = togglevar(argc, argv, &sunique, "Store unique");
}
