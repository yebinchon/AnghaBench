
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trace_find_command (char*,int) ;

__attribute__((used)) static void
trace_find_start_command (char *args, int from_tty)
{
  trace_find_command ("0", from_tty);
}
