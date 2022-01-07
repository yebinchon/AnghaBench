
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int modcmd_t ;


 int ENOTTY ;



 int k_uvm_fini (void*) ;
 int k_uvm_init (void*) ;

__attribute__((used)) static
int
k_uvm_modcmd(modcmd_t cmd, void *arg)
{
 int ret;

 switch (cmd) {
 case 129:
  ret = k_uvm_init(arg);
  break;

 case 130:
  ret = k_uvm_fini(arg);
  break;

 case 128:
 default:
  ret = ENOTTY;
 }

 return ret;
}
