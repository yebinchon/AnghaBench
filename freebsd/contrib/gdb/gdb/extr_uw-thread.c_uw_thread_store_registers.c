
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_store_registers ) (int) ;} ;


 int CALL_BASE (int ) ;
 TYPE_1__ base_ops ;
 int stub1 (int) ;

__attribute__((used)) static void
uw_thread_store_registers (int regno)
{
  CALL_BASE (base_ops.to_store_registers (regno));
}
