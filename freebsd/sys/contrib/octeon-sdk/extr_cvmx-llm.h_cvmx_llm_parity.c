
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_DPOP (int ,int ) ;

__attribute__((used)) static inline uint64_t cvmx_llm_parity(uint64_t value)
{
    uint64_t result;
    CVMX_DPOP(result, value);
    return result;
}
