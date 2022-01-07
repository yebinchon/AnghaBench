
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tui_active ;
 int tui_disable () ;
 int tui_start_enabled ;

__attribute__((used)) static int
tui_suspend (void *data)
{
  tui_start_enabled = tui_active;
  tui_disable ();
  return 1;
}
