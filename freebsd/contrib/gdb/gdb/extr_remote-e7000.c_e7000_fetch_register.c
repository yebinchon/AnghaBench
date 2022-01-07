
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int e7000_fetch_registers () ;

__attribute__((used)) static void
e7000_fetch_register (int regno)
{
  e7000_fetch_registers ();
}
