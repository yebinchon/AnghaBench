
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ str_is_ip6 (char*) ;

__attribute__((used)) static void
calc_num46(char** ifs, int num_ifs, int do_ip4, int do_ip6,
 int* num_ip4, int* num_ip6)
{
 int i;
 *num_ip4 = 0;
 *num_ip6 = 0;
 if(num_ifs <= 0) {
  if(do_ip4)
   *num_ip4 = 1;
  if(do_ip6)
   *num_ip6 = 1;
  return;
 }
 for(i=0; i<num_ifs; i++)
 {
  if(str_is_ip6(ifs[i])) {
   if(do_ip6)
    (*num_ip6)++;
  } else {
   if(do_ip4)
    (*num_ip4)++;
  }
 }

}
