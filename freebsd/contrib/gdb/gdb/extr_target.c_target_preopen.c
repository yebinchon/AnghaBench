
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dont_repeat () ;
 int error (char*) ;
 int pop_target () ;
 scalar_t__ query (char*) ;
 scalar_t__ target_has_execution ;
 int target_kill () ;

void
target_preopen (int from_tty)
{
  dont_repeat ();

  if (target_has_execution)
    {
      if (!from_tty
          || query ("A program is being debugged already.  Kill it? "))
 target_kill ();
      else
 error ("Program not killed.");
    }




  if (target_has_execution)
    pop_target ();
}
