
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int togglevar (int,char**,int *,char*) ;
 int trace ;

void
settrace(int argc, char *argv[])
{

 code = togglevar(argc, argv, &trace, "Packet tracing");
}
