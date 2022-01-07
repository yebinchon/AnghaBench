
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int u64; } ;
typedef TYPE_2__ cvmx_trax_ctl_t ;
struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_9__ {TYPE_1__ cmn2; } ;
typedef TYPE_3__ cvmx_tra_data_t ;


 int CVMX_TRAX_CTL (int) ;
 int _cvmx_tra_unit ;
 int cvmx_read_csr (int ) ;
 int cvmx_tra_decode_text (TYPE_2__,TYPE_3__) ;
 TYPE_3__ cvmx_tra_read_v2 (int) ;

void cvmx_tra_display_v2(int tra_unit)
{
    int valid = 0;

    cvmx_trax_ctl_t tra_ctl;
    cvmx_tra_data_t data;

    valid = 0;
    tra_ctl.u64 = cvmx_read_csr(CVMX_TRAX_CTL(tra_unit));

    do
    {
        data = cvmx_tra_read_v2(tra_unit);
        if (data.cmn2.valid)
        {
            _cvmx_tra_unit = tra_unit;
            cvmx_tra_decode_text(tra_ctl, data);
            valid = 1;
        }
    } while (valid);
}
