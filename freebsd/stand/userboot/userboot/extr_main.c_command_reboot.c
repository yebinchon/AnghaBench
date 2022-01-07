
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 int USERBOOT_EXIT_REBOOT ;
 int exit (int ) ;

__attribute__((used)) static int
command_reboot(int argc, char *argv[])
{

 exit(USERBOOT_EXIT_REBOOT);
 return (CMD_OK);
}
