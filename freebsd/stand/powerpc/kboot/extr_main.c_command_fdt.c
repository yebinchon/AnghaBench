
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int command_fdt_internal (int,char**) ;

__attribute__((used)) static int
command_fdt(int argc, char *argv[])
{

 return (command_fdt_internal(argc, argv));
}
