
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_prologue_data {int dummy; } ;
struct prologue_value {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ pv_definite_yes ;
 scalar_t__ s390_on_stack (struct prologue_value*,int ,struct s390_prologue_data*,struct prologue_value**) ;

__attribute__((used)) static void
s390_store (struct prologue_value *addr,
            CORE_ADDR size,
            struct prologue_value *value,
     struct s390_prologue_data *data)
{
  struct prologue_value *stack;


  if (s390_on_stack (addr, size, data, &stack) == pv_definite_yes)
    {
      *stack = *value;
      return;
    }
}
