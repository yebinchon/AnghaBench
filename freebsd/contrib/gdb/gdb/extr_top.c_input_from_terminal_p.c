
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int caution ;
 scalar_t__ gdb_has_a_terminal () ;
 scalar_t__ instream ;
 scalar_t__ stdin ;

int
input_from_terminal_p (void)
{
  return gdb_has_a_terminal () && (instream == stdin) & caution;
}
