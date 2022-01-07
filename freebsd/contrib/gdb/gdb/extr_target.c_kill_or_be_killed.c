
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int printf_unfiltered (char*) ;
 scalar_t__ query (char*) ;
 int target_files_info () ;
 scalar_t__ target_has_execution ;
 int target_kill () ;
 int tcomplain () ;

__attribute__((used)) static void
kill_or_be_killed (int from_tty)
{
  if (target_has_execution)
    {
      printf_unfiltered ("You are already running a program:\n");
      target_files_info ();
      if (query ("Kill it? "))
 {
   target_kill ();
   if (target_has_execution)
     error ("Killing the program did not help.");
   return;
 }
      else
 {
   error ("Program not killed.");
 }
    }
  tcomplain ();
}
