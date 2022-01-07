
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_table {int the_bfd_section; int bfd; } ;
struct s390_prologue_data {int dummy; } ;
struct prologue_value {scalar_t__ kind; int k; } ;
typedef int CORE_ADDR ;


 int SEC_READONLY ;
 int bfd_get_section_flags (int ,int ) ;
 int current_target ;
 scalar_t__ pv_constant ;
 scalar_t__ pv_definite_yes ;
 int pv_set_to_constant (struct prologue_value*,int ) ;
 int pv_set_to_unknown (struct prologue_value*) ;
 int read_memory_integer (int ,int ) ;
 scalar_t__ s390_on_stack (struct prologue_value*,int ,struct s390_prologue_data*,struct prologue_value**) ;
 struct section_table* target_section_by_addr (int *,int ) ;

__attribute__((used)) static void
s390_load (struct prologue_value *addr,
    CORE_ADDR size,
    struct prologue_value *value,
    struct s390_prologue_data *data)
{
  struct prologue_value *stack;






  if (addr->kind == pv_constant)
    {
      struct section_table *secp;
      secp = target_section_by_addr (&current_target, addr->k);
      if (secp != ((void*)0)
          && (bfd_get_section_flags (secp->bfd, secp->the_bfd_section)
              & SEC_READONLY))
 {
          pv_set_to_constant (value, read_memory_integer (addr->k, size));
   return;
 }
    }



  if (s390_on_stack (addr, size, data, &stack) == pv_definite_yes)
    {
      *value = *stack;
      return;
    }


  pv_set_to_unknown (value);
}
