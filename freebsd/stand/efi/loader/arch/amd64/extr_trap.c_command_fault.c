
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;

__attribute__((used)) static int
command_fault(int argc, char *argv[])
{

 __asm("ud2");
 return (CMD_OK);
}
