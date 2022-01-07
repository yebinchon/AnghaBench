
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bootinfo {int bi_boot_dev_type; } ;





 int EV_VOLATILE ;
 int * env_noset ;
 int env_nounset ;
 int env_setenv (char*,int ,char const*,int *,int ) ;

__attribute__((used)) static void
extract_currdev(struct bootinfo *bootinfop)
{
 const char *bootdev;






 switch(bootinfop->bi_boot_dev_type) {
 case 129:
  bootdev = "dram0";
  break;

 case 130:
  bootdev = "cfi0";
  break;

 case 128:
  bootdev = "sdcard0";
  break;

 default:
  bootdev = ((void*)0);
 }

 if (bootdev != ((void*)0)) {
  env_setenv("currdev", EV_VOLATILE, bootdev, ((void*)0), env_nounset);
  env_setenv("loaddev", EV_VOLATILE, bootdev, env_noset,
      env_nounset);
 }
}
