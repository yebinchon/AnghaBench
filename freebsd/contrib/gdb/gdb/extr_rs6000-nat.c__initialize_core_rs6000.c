
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_core_fns (int *) ;
 int find_toc_address ;
 int rs6000_core_fns ;
 int rs6000_find_toc_address_hook ;
 int rs6000_set_host_arch_hook ;
 int set_host_arch ;

void
_initialize_core_rs6000 (void)
{


  rs6000_find_toc_address_hook = find_toc_address;



  rs6000_set_host_arch_hook = set_host_arch;

  add_core_fns (&rs6000_core_fns);
}
