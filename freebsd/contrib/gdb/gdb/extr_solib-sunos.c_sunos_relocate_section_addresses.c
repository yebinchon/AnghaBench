
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct so_list {int dummy; } ;
struct section_table {int endaddr; int addr; } ;


 scalar_t__ LM_ADDR (struct so_list*) ;

__attribute__((used)) static void
sunos_relocate_section_addresses (struct so_list *so,
                                 struct section_table *sec)
{
  sec->addr += LM_ADDR (so);
  sec->endaddr += LM_ADDR (so);
}
