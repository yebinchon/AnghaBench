
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {void* datahi; void* data; } ;
struct TYPE_5__ {TYPE_1__ u128; } ;
typedef TYPE_2__ cvmx_tra_data_t ;


 int CVMX_TRA_READ_DAT ;
 int CVMX_TRA_READ_DAT_HI ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN5XXX ;
 int OCTEON_CN63XX_PASS1_X ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 void* cvmx_read_csr (int ) ;

cvmx_tra_data_t cvmx_tra_read(void)
{
    uint64_t address = CVMX_TRA_READ_DAT;
    cvmx_tra_data_t result;



    if (OCTEON_IS_MODEL(OCTEON_CN63XX_PASS1_X))
    {

        result.u128.data = cvmx_read_csr(address);
        result.u128.datahi = cvmx_read_csr(address);
    }
    else if (!OCTEON_IS_MODEL(OCTEON_CN3XXX) && !OCTEON_IS_MODEL(OCTEON_CN5XXX))
    {


        result.u128.data = cvmx_read_csr(address);
        result.u128.datahi = cvmx_read_csr(CVMX_TRA_READ_DAT_HI);
    }
    else
    {
        result.u128.data = cvmx_read_csr(address);
        result.u128.datahi = 0;
    }

    return result;
}
