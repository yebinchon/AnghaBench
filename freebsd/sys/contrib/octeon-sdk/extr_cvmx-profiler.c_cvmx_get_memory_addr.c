
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_bootmem_named_block_desc {int base_addr; } ;


 int assert (int ) ;
 struct cvmx_bootmem_named_block_desc* cvmx_bootmem_find_named_block (char const*) ;
 void* cvmx_phys_to_ptr (int ) ;

__attribute__((used)) static
void *cvmx_get_memory_addr(const char* buf_name)
{
    void *buffer_ptr = ((void*)0);
    const struct cvmx_bootmem_named_block_desc *block_desc = cvmx_bootmem_find_named_block(buf_name);
    if (block_desc)
        buffer_ptr = cvmx_phys_to_ptr(block_desc->base_addr);
    assert (buffer_ptr != ((void*)0));

    return buffer_ptr;
}
