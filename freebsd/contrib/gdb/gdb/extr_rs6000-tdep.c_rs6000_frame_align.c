
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
typedef int CORE_ADDR ;



__attribute__((used)) static CORE_ADDR
rs6000_frame_align (struct gdbarch *gdbarch, CORE_ADDR addr)
{
  return (addr & -16);
}
