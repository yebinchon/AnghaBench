
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_info {int dummy; } ;


 int CMD_ERROR ;
 int CMD_OK ;
 char* command_errmsg ;
 int printf (char*) ;
 int ub_dump_si (struct sys_info*) ;
 struct sys_info* ub_get_sys_info () ;

__attribute__((used)) static int
command_sysinfo(int argc, char *argv[])
{
 struct sys_info *si;

 if ((si = ub_get_sys_info()) == ((void*)0)) {
  command_errmsg = "could not retrieve U-Boot sys info!?";
  return (CMD_ERROR);
 }

 printf("U-Boot system info:\n");
 ub_dump_si(si);
 return (CMD_OK);
}
