
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 int OF_exit () ;

__attribute__((used)) static int
command_halt(int argc, char *argv[])
{

 OF_exit();
 return (CMD_OK);
}
