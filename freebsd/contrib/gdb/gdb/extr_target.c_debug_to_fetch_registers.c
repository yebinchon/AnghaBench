
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_fetch_registers ) (int) ;} ;


 int debug_print_register (char*,int) ;
 TYPE_1__ debug_target ;
 int stub1 (int) ;

__attribute__((used)) static void
debug_to_fetch_registers (int regno)
{
  debug_target.to_fetch_registers (regno);
  debug_print_register ("target_fetch_registers", regno);
}
