
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 scalar_t__ INT_MAX ;
 int error (char*) ;
 scalar_t__ history_size ;
 int stifle_history (scalar_t__) ;
 int unstifle_history () ;

__attribute__((used)) static void
set_history_size_command (char *args, int from_tty, struct cmd_list_element *c)
{
  if (history_size == INT_MAX)
    unstifle_history ();
  else if (history_size >= 0)
    stifle_history (history_size);
  else
    {
      history_size = INT_MAX;
      error ("History size must be non-negative");
    }
}
