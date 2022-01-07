
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TARGET_SO_SOLIB_CREATE_INFERIOR_HOOK () ;

void
solib_create_inferior_hook (void)
{
  TARGET_SO_SOLIB_CREATE_INFERIOR_HOOK ();
}
