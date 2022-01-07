
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pop_target () ;

__attribute__((used)) static void
arm_rdi_detach (char *args, int from_tty)
{
  pop_target ();
}
