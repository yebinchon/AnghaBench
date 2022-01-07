
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dtrace_invop_jump_addr ;

void
dtrace_invop_uninit(void)
{

 dtrace_invop_jump_addr = 0;
}
