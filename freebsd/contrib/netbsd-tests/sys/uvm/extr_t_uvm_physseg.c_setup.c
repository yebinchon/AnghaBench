
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int page_init_done; } ;
struct TYPE_3__ {scalar_t__ npages; int pagesize; } ;


 int PAGE_SIZE ;
 TYPE_2__ uvm ;
 int uvm_physseg_init () ;
 TYPE_1__ uvmexp ;

__attribute__((used)) static void
setup(void)
{

 uvmexp.pagesize = PAGE_SIZE;
 uvmexp.npages = 0;
 uvm.page_init_done = 0;
 uvm_physseg_init();
}
