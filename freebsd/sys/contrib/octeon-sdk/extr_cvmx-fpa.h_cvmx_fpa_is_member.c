
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_2__ {void* base; int size; int starting_element_count; } ;


 TYPE_1__* cvmx_fpa_pool_info ;

__attribute__((used)) static inline int cvmx_fpa_is_member(uint64_t pool, void *ptr)
{
    return ((ptr >= cvmx_fpa_pool_info[pool].base) &&
            ((char*)ptr < ((char*)(cvmx_fpa_pool_info[pool].base)) + cvmx_fpa_pool_info[pool].size * cvmx_fpa_pool_info[pool].starting_element_count));
}
