
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int uint8_t ;


 int ENOMEM ;
 int memcpy (int *,void*,size_t) ;
 scalar_t__ pmap_quick_enter_page (int ) ;
 int pmap_quick_remove_page (int ) ;

__attribute__((used)) static int
copyout_page(vm_page_t p, size_t offset, void *kaddr, size_t size)
{
        uint8_t *dst;

        dst = (uint8_t*)pmap_quick_enter_page(p);
        if (!dst)
                return ENOMEM;

        memcpy(dst + offset, kaddr, size);

        pmap_quick_remove_page((vm_offset_t)dst);

        return 0;
}
