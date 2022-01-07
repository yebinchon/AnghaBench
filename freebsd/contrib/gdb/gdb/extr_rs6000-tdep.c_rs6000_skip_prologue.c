
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs6000_framedata {int dummy; } ;
typedef int CORE_ADDR ;


 int skip_prologue (int ,int ,struct rs6000_framedata*) ;

__attribute__((used)) static CORE_ADDR
rs6000_skip_prologue (CORE_ADDR pc)
{
  struct rs6000_framedata frame;
  pc = skip_prologue (pc, 0, &frame);
  return pc;
}
