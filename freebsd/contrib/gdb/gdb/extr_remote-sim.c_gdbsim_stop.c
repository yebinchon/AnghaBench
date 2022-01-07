
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdbsim_desc ;
 int quit () ;
 int sim_stop (int ) ;

__attribute__((used)) static void
gdbsim_stop (void)
{
  if (!sim_stop (gdbsim_desc))
    {
      quit ();
    }
}
