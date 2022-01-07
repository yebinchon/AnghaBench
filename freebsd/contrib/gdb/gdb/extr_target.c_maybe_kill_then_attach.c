
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kill_or_be_killed (int) ;
 int target_attach (char*,int) ;

__attribute__((used)) static void
maybe_kill_then_attach (char *args, int from_tty)
{
  kill_or_be_killed (from_tty);
  target_attach (args, from_tty);
}
