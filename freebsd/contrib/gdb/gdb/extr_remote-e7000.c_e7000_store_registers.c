
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_REALREGS ;
 int e7000_store_register (int) ;
 int registers_changed () ;

__attribute__((used)) static void
e7000_store_registers (void)
{
  int regno;

  for (regno = 0; regno < NUM_REALREGS; regno++)
    e7000_store_register (regno);

  registers_changed ();
}
