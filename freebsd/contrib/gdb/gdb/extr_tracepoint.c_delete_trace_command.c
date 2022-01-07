
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delete_op ;
 int dont_repeat () ;
 int map_args_over_tracepoints (char*,int,int ) ;
 int query (char*) ;
 scalar_t__ tracepoint_chain ;

__attribute__((used)) static void
delete_trace_command (char *args, int from_tty)
{
  dont_repeat ();
  if (!args || !*args)
    if (from_tty)
      if (tracepoint_chain)
 if (!query ("Delete all tracepoints? "))
   return;

  map_args_over_tracepoints (args, from_tty, delete_op);
}
