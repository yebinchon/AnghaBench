
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hard_trap_info {scalar_t__ tt; scalar_t__ signo; } ;


 int exceptionHandler (scalar_t__,int ) ;
 struct hard_trap_info* hard_trap_info ;
 int initialized ;
 int trap_low ;

void
set_debug_traps (void)
{
  struct hard_trap_info *ht;

  for (ht = hard_trap_info; ht->tt && ht->signo; ht++)
    exceptionHandler(ht->tt, trap_low);

  initialized = 1;
}
