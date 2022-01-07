
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int u64; } ;
typedef TYPE_1__ cvmx_llm_data_t ;
struct TYPE_6__ {int u64; } ;
typedef TYPE_2__ cvmx_llm_address_t ;


 int CVMX_MF_LLM_DATA (int,int ) ;
 int CVMX_MT_LLM_READ_ADDR (int,int ) ;

__attribute__((used)) static inline cvmx_llm_data_t cvmx_llm_read_narrow(cvmx_llm_address_t address, int set)
{
    cvmx_llm_data_t value;
    if (set)
    {
        CVMX_MT_LLM_READ_ADDR(1, address.u64);
        CVMX_MF_LLM_DATA(1, value.u64);
    }
    else
    {
        CVMX_MT_LLM_READ_ADDR(0, address.u64);
        CVMX_MF_LLM_DATA(0, value.u64);
    }
    return value;
}
