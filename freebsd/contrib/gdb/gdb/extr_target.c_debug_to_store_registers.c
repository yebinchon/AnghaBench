
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_store_registers ) (int) ;} ;


 int debug_print_register (char*,int) ;
 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdlog ;
 int stub1 (int) ;

__attribute__((used)) static void
debug_to_store_registers (int regno)
{
  debug_target.to_store_registers (regno);
  debug_print_register ("target_store_registers", regno);
  fprintf_unfiltered (gdb_stdlog, "\n");
}
