
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_map_t ;
struct page {int dummy; } ;


 int EFAULT ;
 size_t PAGE_SHIFT ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int vm_fault_quick_hold_pages (int ,unsigned long,size_t,int,struct page**,int) ;

__attribute__((used)) static int
linux_get_user_pages_internal(vm_map_t map, unsigned long start, int nr_pages,
    int write, struct page **pages)
{
 vm_prot_t prot;
 size_t len;
 int count;

 prot = write ? (VM_PROT_READ | VM_PROT_WRITE) : VM_PROT_READ;
 len = ((size_t)nr_pages) << PAGE_SHIFT;
 count = vm_fault_quick_hold_pages(map, start, len, prot, pages, nr_pages);
 return (count == -1 ? -EFAULT : nr_pages);
}
