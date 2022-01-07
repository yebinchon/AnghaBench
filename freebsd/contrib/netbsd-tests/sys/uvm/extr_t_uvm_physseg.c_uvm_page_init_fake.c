
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uvm_physseg_t ;
struct vm_page {int dummy; } ;
typedef size_t psize_t ;
struct TYPE_2__ {int page_init_done; } ;


 TYPE_1__ uvm ;
 size_t uvm_physseg_get_end (int ) ;
 int uvm_physseg_get_first () ;
 int uvm_physseg_get_next (int ) ;
 size_t uvm_physseg_get_start (int ) ;
 int uvm_physseg_init_seg (int ,struct vm_page*) ;
 int uvm_physseg_seg_alloc_from_slab (int ,size_t) ;
 int uvm_physseg_seg_chomp_slab (int ,struct vm_page*,size_t) ;
 scalar_t__ uvm_physseg_valid_p (int ) ;

__attribute__((used)) static void
uvm_page_init_fake(struct vm_page *pagearray, psize_t pagecount)
{
 uvm_physseg_t bank;
 size_t n;

 for (bank = uvm_physseg_get_first(),
   uvm_physseg_seg_chomp_slab(bank, pagearray, pagecount);
      uvm_physseg_valid_p(bank);
      bank = uvm_physseg_get_next(bank)) {

  n = uvm_physseg_get_end(bank) - uvm_physseg_get_start(bank);
  uvm_physseg_seg_alloc_from_slab(bank, n);
  uvm_physseg_init_seg(bank, pagearray);


  pagearray += n;
  pagecount -= n;
 }

 uvm.page_init_done = 1;
}
