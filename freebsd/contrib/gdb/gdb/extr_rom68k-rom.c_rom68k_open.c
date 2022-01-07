
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int monitor_open (char*,int *,int) ;
 int rom68k_cmds ;

__attribute__((used)) static void
rom68k_open (char *args, int from_tty)
{
  monitor_open (args, &rom68k_cmds, from_tty);
}
