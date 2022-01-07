
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EV_VOLATILE ;
 int efi_setcurrdev ;
 int env_noset ;
 int env_nounset ;
 int env_setenv (char*,int ,char const*,int ,int ) ;

__attribute__((used)) static void
set_currdev(const char *devname)
{

 env_setenv("currdev", EV_VOLATILE, devname, efi_setcurrdev, env_nounset);
 env_setenv("loaddev", EV_VOLATILE, devname, env_noset, env_nounset);
}
