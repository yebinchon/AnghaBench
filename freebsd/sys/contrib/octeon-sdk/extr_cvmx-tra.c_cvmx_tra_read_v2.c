
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* datahi; void* data; } ;
struct TYPE_5__ {TYPE_1__ u128; } ;
typedef TYPE_2__ cvmx_tra_data_t ;


 int CVMX_TRAX_READ_DAT (int) ;
 int CVMX_TRAX_READ_DAT_HI (int) ;
 void* cvmx_read_csr (int ) ;

cvmx_tra_data_t cvmx_tra_read_v2(int tra_unit)
{
    cvmx_tra_data_t result;

    result.u128.data = cvmx_read_csr(CVMX_TRAX_READ_DAT(tra_unit));
    result.u128.datahi = cvmx_read_csr(CVMX_TRAX_READ_DAT_HI(tra_unit));

    return result;
}
