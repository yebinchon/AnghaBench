
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct so_list {TYPE_1__* lm_info; struct section_table* sections; } ;
struct section_table {int dummy; } ;
struct TYPE_2__ {int base_address; } ;
typedef int CORE_ADDR ;


 int adjust_section_address (struct section_table*,int *) ;

__attribute__((used)) static void
kld_relocate_section_addresses (struct so_list *so, struct section_table *sec)
{
 static CORE_ADDR curr_addr;

 if (sec == so->sections)
  curr_addr = so->lm_info->base_address;

 adjust_section_address(sec, &curr_addr);
}
