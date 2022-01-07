
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 int unload () ;

__attribute__((used)) static int
command_unload(int argc, char *argv[])
{
 unload();
 return(CMD_OK);
}
