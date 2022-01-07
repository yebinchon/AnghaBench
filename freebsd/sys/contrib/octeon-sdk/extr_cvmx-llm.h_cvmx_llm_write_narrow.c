
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {scalar_t__ xxor; int dat; scalar_t__ mbz; } ;
struct TYPE_6__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_llm_data_t ;
struct TYPE_7__ {int u64; } ;
typedef TYPE_3__ cvmx_llm_address_t ;


 int CVMX_MT_LLM_DATA (int,int ) ;
 int CVMX_MT_LLM_WRITE_ADDR_INTERNAL (int,int ) ;

__attribute__((used)) static inline void cvmx_llm_write_narrow(cvmx_llm_address_t address, uint64_t value, int set)
{
    cvmx_llm_data_t data;
    data.s.mbz = 0;

    data.s.dat = value;

    data.s.xxor = 0;

    if (set)
    {
        CVMX_MT_LLM_DATA(1, data.u64);
        CVMX_MT_LLM_WRITE_ADDR_INTERNAL(1, address.u64);
    }
    else
    {
        CVMX_MT_LLM_DATA(0, data.u64);
        CVMX_MT_LLM_WRITE_ADDR_INTERNAL(0, address.u64);
    }
}
