
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debug_base ;

__attribute__((used)) static void
sunos_clear_solib (void)
{
  debug_base = 0;
}
