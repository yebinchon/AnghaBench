
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int cvmx_tra_sid_t ;
typedef int cvmx_tra_filt_t ;
struct TYPE_8__ {int u64; } ;
typedef TYPE_2__ cvmx_tra_filt_sid_t ;
struct TYPE_9__ {int u64; } ;
typedef TYPE_3__ cvmx_tra_filt_did_t ;
struct TYPE_10__ {int u64; } ;
typedef TYPE_4__ cvmx_tra_filt_cmd_t ;
typedef int cvmx_tra_did_t ;
struct TYPE_7__ {int rdat_md; } ;
struct TYPE_11__ {int u64; TYPE_1__ s; } ;
typedef TYPE_5__ cvmx_tra_ctl_t ;


 int CVMX_L2C_TADS ;
 int CVMX_TRAX_CTL (int) ;
 int CVMX_TRAX_FILT_ADR_ADR (int) ;
 int CVMX_TRAX_FILT_ADR_MSK (int) ;
 int CVMX_TRAX_FILT_CMD (int) ;
 int CVMX_TRAX_FILT_DID (int) ;
 int CVMX_TRAX_FILT_SID (int) ;
 int CVMX_TRA_DESTINATION_MASK ;
 int CVMX_TRA_FILT_IOBDMA ;
 int CVMX_TRA_SOURCE_MASK ;
 int OCTEON_CN6XXX ;
 int OCTEON_CNF7XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_tra_set_filter_cmd_mask (int ) ;
 int cvmx_dprintf (char*) ;
 int cvmx_write_csr (int ,int) ;

void cvmx_tra_setup(cvmx_tra_ctl_t control, cvmx_tra_filt_t filter,
                    cvmx_tra_sid_t source_filter, cvmx_tra_did_t dest_filter,
                    uint64_t address, uint64_t address_mask)
{
    cvmx_tra_filt_cmd_t filt_cmd;
    cvmx_tra_filt_sid_t filt_sid;
    cvmx_tra_filt_did_t filt_did;
    int tad;

    filt_cmd.u64 = __cvmx_tra_set_filter_cmd_mask(filter);
    filt_sid.u64 = source_filter & CVMX_TRA_SOURCE_MASK;
    filt_did.u64 = dest_filter & CVMX_TRA_DESTINATION_MASK;



    if ((OCTEON_IS_MODEL(OCTEON_CN6XXX) || OCTEON_IS_MODEL(OCTEON_CNF7XXX))
        && ((filt_cmd.u64 & CVMX_TRA_FILT_IOBDMA) == CVMX_TRA_FILT_IOBDMA)
        && address_mask != 0)
    {
        cvmx_dprintf("The address-based filtering does not work with IOBDMAs, disabling the filter command.\n");
        filt_cmd.u64 &= ~(CVMX_TRA_FILT_IOBDMA);
    }




    control.s.rdat_md = 1;

    for (tad = 0; tad < CVMX_L2C_TADS; tad++)
    {
        cvmx_write_csr(CVMX_TRAX_CTL(tad), control.u64);
        cvmx_write_csr(CVMX_TRAX_FILT_CMD(tad), filt_cmd.u64);
        cvmx_write_csr(CVMX_TRAX_FILT_SID(tad), filt_sid.u64);
        cvmx_write_csr(CVMX_TRAX_FILT_DID(tad), filt_did.u64);
        cvmx_write_csr(CVMX_TRAX_FILT_ADR_ADR(tad), address);
        cvmx_write_csr(CVMX_TRAX_FILT_ADR_MSK(tad), address_mask);
    }
}
