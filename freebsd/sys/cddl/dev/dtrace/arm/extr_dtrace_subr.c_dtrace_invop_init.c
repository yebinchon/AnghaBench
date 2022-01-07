
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dtrace_invop_jump_addr ;
 int dtrace_invop_start ;

void dtrace_invop_init(void)
{
 dtrace_invop_jump_addr = dtrace_invop_start;
}
