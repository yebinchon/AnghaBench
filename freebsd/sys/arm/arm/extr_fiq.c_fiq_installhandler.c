
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;


 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int icache_sync (int ,size_t) ;
 int memcpy (void*,void*,size_t) ;
 int const vector_page ;
 int vector_page_setprot (int) ;

__attribute__((used)) static void
fiq_installhandler(void *func, size_t size)
{
 const uint32_t fiqvector = 7 * sizeof(uint32_t);


 vector_page_setprot(VM_PROT_READ|VM_PROT_WRITE);


 memcpy((void *)(vector_page + fiqvector), func, size);


 vector_page_setprot(VM_PROT_READ);

 icache_sync((vm_offset_t) fiqvector, size);
}
