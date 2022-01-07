
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dont_repeat () ;
 int enable_op ;
 int map_args_over_tracepoints (char*,int,int ) ;

__attribute__((used)) static void
enable_trace_command (char *args, int from_tty)
{
  dont_repeat ();
  map_args_over_tracepoints (args, from_tty, enable_op);
}
