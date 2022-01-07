
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_registers_changed ;
 int debug_registers_used ;
 unsigned int* dr ;

void
cygwin_set_dr7 (unsigned val)
{
  dr[7] = val;
  debug_registers_changed = 1;
  debug_registers_used = 1;
}
