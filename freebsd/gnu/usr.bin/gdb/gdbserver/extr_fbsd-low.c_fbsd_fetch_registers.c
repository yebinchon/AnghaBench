
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int regsets_fetch_inferior_registers () ;

void
fbsd_fetch_registers (int regno)
{
      regsets_fetch_inferior_registers ();
}
