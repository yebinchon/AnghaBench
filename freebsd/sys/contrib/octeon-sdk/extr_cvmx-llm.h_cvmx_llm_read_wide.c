
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int cvmx_llm_address_t ;


 int CVMX_MF_LLM_DATA (int,int ) ;
 int CVMX_MT_LLM_READ64_ADDR (int,int ) ;

__attribute__((used)) static inline uint64_t cvmx_llm_read_wide(cvmx_llm_address_t address, int set)
{
    uint64_t value;
    if (set)
    {
        CVMX_MT_LLM_READ64_ADDR(1, address);
        CVMX_MF_LLM_DATA(1, value);
    }
    else
    {
        CVMX_MT_LLM_READ64_ADDR(0, address);
        CVMX_MF_LLM_DATA(0, value);
    }
    return value;
}
