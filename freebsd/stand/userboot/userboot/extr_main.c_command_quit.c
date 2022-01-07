
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 int USERBOOT_EXIT_QUIT ;
 int exit (int ) ;

__attribute__((used)) static int
command_quit(int argc, char *argv[])
{

 exit(USERBOOT_EXIT_QUIT);
 return (CMD_OK);
}
