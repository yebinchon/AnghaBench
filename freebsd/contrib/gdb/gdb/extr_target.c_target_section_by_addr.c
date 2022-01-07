
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {struct section_table* to_sections_end; struct section_table* to_sections; } ;
struct section_table {scalar_t__ addr; scalar_t__ endaddr; } ;
typedef scalar_t__ CORE_ADDR ;



struct section_table *
target_section_by_addr (struct target_ops *target, CORE_ADDR addr)
{
  struct section_table *secp;
  for (secp = target->to_sections;
       secp < target->to_sections_end;
       secp++)
    {
      if (addr >= secp->addr && addr < secp->endaddr)
 return secp;
    }
  return ((void*)0);
}
