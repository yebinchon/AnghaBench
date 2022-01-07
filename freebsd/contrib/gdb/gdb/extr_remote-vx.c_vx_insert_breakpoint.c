
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VX_BREAK_ADD ;
 int net_break (int,int ) ;

__attribute__((used)) static int
vx_insert_breakpoint (int addr)
{
  return net_break (addr, VX_BREAK_ADD);
}
