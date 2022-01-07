
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int mips_close (int) ;
 int pop_target () ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
mips_detach (char *args, int from_tty)
{
  if (args)
    error ("Argument given to \"detach\" when remotely debugging.");

  pop_target ();

  mips_close (1);

  if (from_tty)
    printf_unfiltered ("Ending remote MIPS debugging.\n");
}
