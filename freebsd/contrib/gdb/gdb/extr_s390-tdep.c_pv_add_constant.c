
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {int dummy; } ;
typedef int CORE_ADDR ;


 int pv_add (struct prologue_value*,struct prologue_value*,struct prologue_value*) ;
 int pv_set_to_constant (struct prologue_value*,int ) ;

__attribute__((used)) static void
pv_add_constant (struct prologue_value *v, CORE_ADDR k)
{
  struct prologue_value pv_k;



  pv_set_to_constant (&pv_k, k);
  pv_add (v, v, &pv_k);
}
