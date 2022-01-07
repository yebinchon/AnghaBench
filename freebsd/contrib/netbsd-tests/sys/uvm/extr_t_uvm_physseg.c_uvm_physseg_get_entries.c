
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nentries; } ;


 TYPE_1__ uvm_physseg_graph ;
 int vm_nphysmem ;

__attribute__((used)) static int
uvm_physseg_get_entries(void)
{



 return vm_nphysmem;

}
