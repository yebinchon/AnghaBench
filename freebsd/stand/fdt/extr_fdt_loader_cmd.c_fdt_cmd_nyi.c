
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERROR ;
 int printf (char*) ;

__attribute__((used)) static int
fdt_cmd_nyi(int argc, char *argv[])
{

 printf("command not yet implemented\n");
 return (CMD_ERROR);
}
