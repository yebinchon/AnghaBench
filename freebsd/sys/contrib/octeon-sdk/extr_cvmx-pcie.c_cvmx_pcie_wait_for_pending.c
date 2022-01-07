
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int p1_fcnt; int p1_ucnt; int p0_fcnt; int p0_ucnt; } ;
struct TYPE_7__ {TYPE_2__ s; void* u64; } ;
typedef TYPE_3__ cvmx_sli_data_out_cnt_t ;
struct TYPE_5__ {int p1_fcnt; int p1_ucnt; int p0_fcnt; int p0_ucnt; } ;
struct TYPE_8__ {TYPE_1__ s; void* u64; } ;
typedef TYPE_4__ cvmx_npei_data_out_cnt_t ;


 int CVMX_PEXP_NPEI_DATA_OUT_CNT ;
 int CVMX_PEXP_SLI_DATA_OUT_CNT ;
 int OCTEON_FEATURE_NPEI ;
 void* cvmx_read_csr (int ) ;
 scalar_t__ octeon_has_feature (int ) ;

void cvmx_pcie_wait_for_pending(int pcie_port)
{
    if (octeon_has_feature(OCTEON_FEATURE_NPEI))
    {
        cvmx_npei_data_out_cnt_t npei_data_out_cnt;
        int a;
        int b;
        int c;



        npei_data_out_cnt.u64 = cvmx_read_csr(CVMX_PEXP_NPEI_DATA_OUT_CNT);
        if (pcie_port)
        {
            if (!npei_data_out_cnt.s.p1_fcnt)
                return;
            a = npei_data_out_cnt.s.p1_ucnt;
            b = (a + npei_data_out_cnt.s.p1_fcnt-1) & 0xffff;
        }
        else
        {
            if (!npei_data_out_cnt.s.p0_fcnt)
                return;
            a = npei_data_out_cnt.s.p0_ucnt;
            b = (a + npei_data_out_cnt.s.p0_fcnt-1) & 0xffff;
        }

        while (1)
        {
            npei_data_out_cnt.u64 = cvmx_read_csr(CVMX_PEXP_NPEI_DATA_OUT_CNT);
            c = (pcie_port) ? npei_data_out_cnt.s.p1_ucnt : npei_data_out_cnt.s.p0_ucnt;
            if (a<=b)
            {
                if ((c<a) || (c>b))
                    return;
            }
            else
            {
                if ((c>b) && (c<a))
                    return;
            }
        }
    }
    else
    {
        cvmx_sli_data_out_cnt_t sli_data_out_cnt;
        int a;
        int b;
        int c;

        sli_data_out_cnt.u64 = cvmx_read_csr(CVMX_PEXP_SLI_DATA_OUT_CNT);
        if (pcie_port)
        {
            if (!sli_data_out_cnt.s.p1_fcnt)
                return;
            a = sli_data_out_cnt.s.p1_ucnt;
            b = (a + sli_data_out_cnt.s.p1_fcnt-1) & 0xffff;
        }
        else
        {
            if (!sli_data_out_cnt.s.p0_fcnt)
                return;
            a = sli_data_out_cnt.s.p0_ucnt;
            b = (a + sli_data_out_cnt.s.p0_fcnt-1) & 0xffff;
        }

        while (1)
        {
            sli_data_out_cnt.u64 = cvmx_read_csr(CVMX_PEXP_SLI_DATA_OUT_CNT);
            c = (pcie_port) ? sli_data_out_cnt.s.p1_ucnt : sli_data_out_cnt.s.p0_ucnt;
            if (a<=b)
            {
                if ((c<a) || (c>b))
                    return;
            }
            else
            {
                if ((c>b) && (c<a))
                    return;
            }
        }
    }
}
