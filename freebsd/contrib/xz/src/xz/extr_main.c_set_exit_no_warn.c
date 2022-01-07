
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int no_warn ;

extern void
set_exit_no_warn(void)
{
 no_warn = 1;
 return;
}
