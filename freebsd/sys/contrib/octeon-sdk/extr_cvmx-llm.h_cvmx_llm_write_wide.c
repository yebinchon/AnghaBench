
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int u64; } ;
typedef TYPE_1__ cvmx_llm_address_t ;


 int CVMX_MT_LLM_DATA (int,int ) ;
 int CVMX_MT_LLM_WRITE64_ADDR_INTERNAL (int,int ) ;

__attribute__((used)) static inline void cvmx_llm_write_wide(cvmx_llm_address_t address, uint64_t value, int set)
{
    if (set)
    {
        CVMX_MT_LLM_DATA(1, value);
        CVMX_MT_LLM_WRITE64_ADDR_INTERNAL(1, address.u64);
    }
    else
    {
        CVMX_MT_LLM_DATA(0, value);
        CVMX_MT_LLM_WRITE64_ADDR_INTERNAL(0, address.u64);
    }
}
