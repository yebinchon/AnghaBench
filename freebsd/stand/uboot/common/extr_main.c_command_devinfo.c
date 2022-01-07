
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERROR ;
 int CMD_OK ;
 char* command_errmsg ;
 int devs_no ;
 int printf (char*) ;
 int ub_dev_enum () ;
 int ub_dump_di (int) ;

__attribute__((used)) static int
command_devinfo(int argc, char *argv[])
{
 int i;

 if ((devs_no = ub_dev_enum()) == 0) {
  command_errmsg = "no U-Boot devices found!?";
  return (CMD_ERROR);
 }

 printf("U-Boot devices:\n");
 for (i = 0; i < devs_no; i++) {
  ub_dump_di(i);
  printf("\n");
 }
 return (CMD_OK);
}
