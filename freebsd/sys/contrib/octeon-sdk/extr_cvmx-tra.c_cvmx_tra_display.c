
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {void* u64; } ;
typedef TYPE_3__ cvmx_trax_ctl_t ;
struct TYPE_11__ {scalar_t__ valid; } ;
struct TYPE_10__ {scalar_t__ valid; } ;
struct TYPE_13__ {TYPE_2__ cmn2; TYPE_1__ cmn; } ;
typedef TYPE_4__ cvmx_tra_data_t ;
typedef TYPE_3__ cvmx_tra_ctl_t ;


 int CVMX_L2C_TADS ;
 int CVMX_TRAX_CTL (int) ;
 int CVMX_TRA_CTL ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN5XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int _cvmx_tra_unit ;
 void* cvmx_read_csr (int ) ;
 int cvmx_tra_decode_text (TYPE_3__,TYPE_4__) ;
 TYPE_4__ cvmx_tra_read () ;
 TYPE_4__ cvmx_tra_read_v2 (int) ;

void cvmx_tra_display(void)
{
    int valid = 0;


    if (CVMX_L2C_TADS > 1)
    {
        cvmx_trax_ctl_t tra_ctl;
        cvmx_tra_data_t data[4];
        int tad;
        do
        {
            valid = 0;
            for (tad = 0; tad < CVMX_L2C_TADS; tad++)
                data[tad] = cvmx_tra_read_v2(tad);

            for (tad = 0; tad < CVMX_L2C_TADS; tad++)
            {
                tra_ctl.u64 = cvmx_read_csr(CVMX_TRAX_CTL(tad));

                if (data[tad].cmn2.valid)
                {
                    _cvmx_tra_unit = tad;
                    cvmx_tra_decode_text(tra_ctl, data[tad]);
                    valid = 1;
                }
            }
        } while (valid);
    }
    else
    {
        cvmx_tra_ctl_t tra_ctl;
        cvmx_tra_data_t data;

        tra_ctl.u64 = cvmx_read_csr(CVMX_TRA_CTL);

        do
        {
            data = cvmx_tra_read();
            if ((OCTEON_IS_MODEL(OCTEON_CN3XXX) || OCTEON_IS_MODEL(OCTEON_CN5XXX)) && data.cmn.valid)
                valid = 1;
            else if (data.cmn2.valid)
                valid = 1;
            else
                valid = 0;

            if (valid)
                cvmx_tra_decode_text(tra_ctl, data);

        } while (valid);
    }
}
