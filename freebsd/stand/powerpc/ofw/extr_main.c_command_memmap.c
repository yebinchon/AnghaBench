
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 int acells ;
 int ofw_memmap (int ) ;

int
command_memmap(int argc, char **argv)
{

 ofw_memmap(acells);
 return (CMD_OK);
}
