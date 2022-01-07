
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;


 int VEX_B ;
 int VEX_R ;

__attribute__((used)) static void
dtrace_vex_adjust(uint_t vex_byte1, uint_t mode, uint_t *reg, uint_t *r_m)
{
 if (reg != ((void*)0) && r_m == ((void*)0)) {
  if (!(vex_byte1 & VEX_B))
   *reg += 8;
 } else {
  if (reg != ((void*)0) && ((VEX_R & vex_byte1) == 0))
   *reg += 8;
  if (r_m != ((void*)0) && ((VEX_B & vex_byte1) == 0))
   *r_m += 8;
 }
}
