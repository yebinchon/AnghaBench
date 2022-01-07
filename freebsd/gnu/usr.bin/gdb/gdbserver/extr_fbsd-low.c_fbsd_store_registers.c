
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int regsets_store_inferior_registers () ;

void
fbsd_store_registers (int regno)
{
      regsets_store_inferior_registers ();
}
