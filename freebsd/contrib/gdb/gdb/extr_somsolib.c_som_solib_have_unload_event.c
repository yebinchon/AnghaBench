
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int ARG0_REGNUM ;
 scalar_t__ SHL_UNLOAD ;
 scalar_t__ read_register (int ) ;

int
som_solib_have_unload_event (int pid)
{
  CORE_ADDR event_kind;

  event_kind = read_register (ARG0_REGNUM);
  return (event_kind == SHL_UNLOAD);
}
