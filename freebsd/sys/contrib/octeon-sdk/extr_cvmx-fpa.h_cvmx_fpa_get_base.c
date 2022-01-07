
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_2__ {void* base; } ;


 TYPE_1__* cvmx_fpa_pool_info ;

__attribute__((used)) static inline void *cvmx_fpa_get_base(uint64_t pool)
{
    return cvmx_fpa_pool_info[pool].base;
}
