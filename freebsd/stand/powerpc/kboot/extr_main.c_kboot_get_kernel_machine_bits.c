
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utsname ;
typedef int uint8_t ;
struct old_utsname {int machine; } ;


 int host_uname (struct old_utsname*) ;
 int memset (struct old_utsname*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

uint8_t
kboot_get_kernel_machine_bits(void)
{
 static uint8_t bits = 0;
 struct old_utsname utsname;
 int ret;

 if (bits == 0) {

  bits = 32;


  memset(&utsname, 0, sizeof(utsname));
  ret = host_uname(&utsname);
  if (ret == 0) {
   if (strcmp(utsname.machine, "ppc64") == 0)
    bits = 64;
   else if (strcmp(utsname.machine, "ppc64le") == 0)
    bits = 64;
  }
 }

 return (bits);
}
