
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close_ports () ;
 int mips_exit_debug () ;
 scalar_t__ mips_is_open ;

__attribute__((used)) static void
mips_close (int quitting)
{
  if (mips_is_open)
    {

      (void) mips_exit_debug ();

      close_ports ();
    }
}
