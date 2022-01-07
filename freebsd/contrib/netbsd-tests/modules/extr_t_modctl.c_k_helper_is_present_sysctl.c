
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int present ;


 int get_sysctl (char*,size_t*,int) ;

__attribute__((used)) static bool
k_helper_is_present_sysctl(void)
{
 size_t present;

 return get_sysctl("vendor.k_helper.present", &present,
     sizeof(present));
}
