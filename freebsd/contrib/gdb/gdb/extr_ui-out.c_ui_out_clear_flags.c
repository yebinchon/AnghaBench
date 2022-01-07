
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int flags; } ;



int
ui_out_clear_flags (struct ui_out *uiout, int mask)
{
  int oldflags = uiout->flags;

  uiout->flags &= ~mask;

  return oldflags;
}
