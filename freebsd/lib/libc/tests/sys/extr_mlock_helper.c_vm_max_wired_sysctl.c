
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int ATF_REQUIRE_MSG (int,char*,int ,int ) ;
 int VM_MAX_WIRED ;
 int errno ;
 int printf (char*,int ) ;
 int strerror (int ) ;
 scalar_t__ sysctlbyname (int ,int *,size_t*,int *,size_t) ;

__attribute__((used)) static void
vm_max_wired_sysctl(u_long *old_value, u_long *new_value)
{
 size_t old_len;
 size_t new_len = (new_value == ((void*)0) ? 0 : sizeof(*new_value));

 if (old_value == ((void*)0))
  printf("Setting the new value to %lu\n", *new_value);
 else {
  ATF_REQUIRE_MSG(sysctlbyname(VM_MAX_WIRED, ((void*)0), &old_len,
      new_value, new_len) == 0,
      "sysctlbyname(%s) failed: %s", VM_MAX_WIRED, strerror(errno));
 }

 ATF_REQUIRE_MSG(sysctlbyname(VM_MAX_WIRED, old_value, &old_len,
     new_value, new_len) == 0,
     "sysctlbyname(%s) failed: %s", VM_MAX_WIRED, strerror(errno));

 if (old_value != ((void*)0))
  printf("Saved the old value (%lu)\n", *old_value);
}
