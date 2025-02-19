
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int cvmx_tra_sid_t ;
typedef int cvmx_tra_filt_t ;
struct TYPE_4__ {int u64; } ;
typedef TYPE_1__ cvmx_tra_filt_sid_t ;
struct TYPE_5__ {int u64; } ;
typedef TYPE_2__ cvmx_tra_filt_did_t ;
struct TYPE_6__ {int u64; } ;
typedef TYPE_3__ cvmx_tra_filt_cmd_t ;
typedef int cvmx_tra_did_t ;


 int CVMX_L2C_TADS ;
 scalar_t__ CVMX_TRAX_TRIG0_ADR_ADR (int) ;
 scalar_t__ CVMX_TRAX_TRIG0_ADR_MSK (int) ;
 scalar_t__ CVMX_TRAX_TRIG0_CMD (int) ;
 scalar_t__ CVMX_TRAX_TRIG0_DID (int) ;
 scalar_t__ CVMX_TRAX_TRIG0_SID (int) ;
 int CVMX_TRA_DESTINATION_MASK ;
 int CVMX_TRA_FILT_IOBDMA ;
 int CVMX_TRA_SOURCE_MASK ;
 int OCTEON_CN6XXX ;
 int OCTEON_CNF7XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_tra_set_filter_cmd_mask (int ) ;
 int cvmx_dprintf (char*) ;
 int cvmx_write_csr (scalar_t__,int) ;

void cvmx_tra_trig_setup(uint64_t trigger, cvmx_tra_filt_t filter,
                         cvmx_tra_sid_t source_filter, cvmx_tra_did_t dest_filter,
                         uint64_t address, uint64_t address_mask)
{
    cvmx_tra_filt_cmd_t tra_filt_cmd;
    cvmx_tra_filt_sid_t tra_filt_sid;
    cvmx_tra_filt_did_t tra_filt_did;
    int tad;

    tra_filt_cmd.u64 = __cvmx_tra_set_filter_cmd_mask(filter);
    tra_filt_sid.u64 = source_filter & CVMX_TRA_SOURCE_MASK;
    tra_filt_did.u64 = dest_filter & CVMX_TRA_DESTINATION_MASK;



    if ((OCTEON_IS_MODEL(OCTEON_CN6XXX) || OCTEON_IS_MODEL(OCTEON_CNF7XXX))
        && ((tra_filt_cmd.u64 & CVMX_TRA_FILT_IOBDMA) == CVMX_TRA_FILT_IOBDMA)
        && address_mask != 0)
    {
        cvmx_dprintf("The address-based filtering does not work with IOBDMAs, disabling the filter command.\n");
        tra_filt_cmd.u64 &= ~(CVMX_TRA_FILT_IOBDMA);
    }

    for (tad = 0; tad < CVMX_L2C_TADS; tad++)
    {
        cvmx_write_csr(CVMX_TRAX_TRIG0_CMD(tad) + trigger * 64, tra_filt_cmd.u64);
        cvmx_write_csr(CVMX_TRAX_TRIG0_SID(tad) + trigger * 64, tra_filt_sid.u64);
        cvmx_write_csr(CVMX_TRAX_TRIG0_DID(tad) + trigger * 64, tra_filt_did.u64);
        cvmx_write_csr(CVMX_TRAX_TRIG0_ADR_ADR(tad) + trigger * 64, address);
        cvmx_write_csr(CVMX_TRAX_TRIG0_ADR_MSK(tad) + trigger * 64, address_mask);
    }
}
