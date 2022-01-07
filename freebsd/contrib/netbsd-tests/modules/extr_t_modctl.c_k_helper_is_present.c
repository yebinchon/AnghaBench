
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum presence_check { ____Placeholder_presence_check } presence_check ;


 int ATF_CHECK (int) ;
 int assert (int) ;

 int k_helper_is_present_stat () ;
 int k_helper_is_present_sysctl () ;



__attribute__((used)) static bool
k_helper_is_present(enum presence_check how)
{
 bool found;

 switch (how) {
 case 130:
  found = k_helper_is_present_stat();
  ATF_CHECK(k_helper_is_present_sysctl() == found);
  break;

 case 129:
  found = k_helper_is_present_stat();
  break;

 case 128:
  found = k_helper_is_present_sysctl();
  break;

 default:
  found = 0;
  assert(found);
 }

 return found;
}
