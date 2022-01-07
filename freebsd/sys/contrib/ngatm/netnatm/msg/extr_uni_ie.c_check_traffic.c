
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tallow {scalar_t__ mask; scalar_t__ mopt_flag; scalar_t__ mopt_mask; scalar_t__ mopt_val; } ;



__attribute__((used)) static int
check_traffic(u_int mask, u_int mopt, struct tallow *a)
{
 if(mask != a->mask)
  return 0;

 if(a->mopt_flag == 0) {

  if(mopt == 0xffff)
   return 1;
  return 0;
 }

 if(a->mopt_flag < 0) {

  if(mopt == 0xffff)
   return 1;
  if((mopt & a->mopt_mask) == a->mopt_val)
   return 1;
  return 0;
 }


 if(mopt == 0xffff)
  return 0;
 if((mopt & a->mopt_mask) == a->mopt_val)
  return 1;
 return 0;
}
