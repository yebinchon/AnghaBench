
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {int dummy; } ;
struct s390_prologue_data {int gpr_size; int fpr_size; struct prologue_value back_chain; struct prologue_value* spill; struct prologue_value* gpr; } ;
typedef enum pv_boolean { ____Placeholder_pv_boolean } pv_boolean ;
typedef int CORE_ADDR ;


 size_t S390_R0_REGNUM ;
 size_t S390_SP_REGNUM ;
 int pv_definite_no ;
 int pv_definite_yes ;
 int pv_is_array_ref (struct prologue_value*,int ,struct prologue_value*,int,int,int*) ;
 int pv_maybe ;
 int pv_set_to_register (struct prologue_value*,size_t,int) ;

__attribute__((used)) static enum pv_boolean
s390_on_stack (struct prologue_value *addr,
               CORE_ADDR size,
        struct s390_prologue_data *data,
               struct prologue_value **stack)
{
  struct prologue_value gpr_spill_addr;
  struct prologue_value fpr_spill_addr;
  struct prologue_value back_chain_addr;
  int i;
  enum pv_boolean b;


  pv_set_to_register (&gpr_spill_addr, S390_SP_REGNUM, 2 * data->gpr_size);
  pv_set_to_register (&fpr_spill_addr, S390_SP_REGNUM, 16 * data->gpr_size);
  back_chain_addr = data->gpr[S390_SP_REGNUM - S390_R0_REGNUM];







  b = pv_is_array_ref (addr, size, &gpr_spill_addr, 14, data->gpr_size, &i);
  if (b == pv_definite_yes)
    {
      *stack = &data->spill[i];
      return pv_definite_yes;
    }
  if (b == pv_maybe)
    return pv_maybe;


  b = pv_is_array_ref (addr, size, &fpr_spill_addr, 4, data->fpr_size, &i);
  if (b == pv_definite_yes)
    {
      *stack = &data->spill[14 + i];
      return pv_definite_yes;
    }
  if (b == pv_maybe)
    return pv_maybe;




  b = pv_is_array_ref (addr, size, &back_chain_addr, 1, data->gpr_size, &i);
  if (b == pv_definite_yes)
    {
      *stack = &data->back_chain;
      return pv_definite_yes;
    }
  if (b == pv_maybe)
    return pv_maybe;


  return pv_definite_no;
}
