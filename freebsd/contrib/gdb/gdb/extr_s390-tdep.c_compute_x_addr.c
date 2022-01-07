
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {int dummy; } ;


 int pv_add (struct prologue_value*,struct prologue_value*,struct prologue_value*) ;
 int pv_set_to_constant (struct prologue_value*,int) ;

__attribute__((used)) static void
compute_x_addr (struct prologue_value *addr,
                struct prologue_value *gpr,
                int d2, unsigned int x2, unsigned int b2)
{


  struct prologue_value result;

  pv_set_to_constant (&result, d2);
  if (x2)
    pv_add (&result, &result, &gpr[x2]);
  if (b2)
    pv_add (&result, &result, &gpr[b2]);

  *addr = result;
}
