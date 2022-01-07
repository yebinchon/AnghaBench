
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prop_dictionary_t ;


 int PAGE_SIZE ;
 int clogp ;
 int page_size ;
 int sysctl_k_uvm_setup (int *) ;

__attribute__((used)) static
int
k_uvm_init(prop_dictionary_t props)
{

 page_size = PAGE_SIZE;

 sysctl_k_uvm_setup(&clogp);

 return 0;
}
