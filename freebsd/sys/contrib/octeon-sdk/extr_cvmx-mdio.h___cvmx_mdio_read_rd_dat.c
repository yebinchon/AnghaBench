
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ pending; } ;
struct TYPE_5__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_smix_rd_dat_t ;


 int CVMX_CLOCK_CORE ;
 scalar_t__ CVMX_MDIO_TIMEOUT ;
 int CVMX_SMIX_RD_DAT (int) ;
 int cvmx_clock_get_rate (int ) ;
 int cvmx_get_cycle () ;
 int cvmx_read_csr (int ) ;
 int cvmx_wait (int) ;

__attribute__((used)) static inline cvmx_smix_rd_dat_t __cvmx_mdio_read_rd_dat(int bus_id)
{
    cvmx_smix_rd_dat_t smi_rd;
    uint64_t done = cvmx_get_cycle() + (uint64_t)CVMX_MDIO_TIMEOUT *
                       cvmx_clock_get_rate(CVMX_CLOCK_CORE) / 1000000;
    do
    {
        cvmx_wait(1000);
        smi_rd.u64 = cvmx_read_csr(CVMX_SMIX_RD_DAT(bus_id));
    } while (smi_rd.s.pending && (cvmx_get_cycle() < done));
    return smi_rd;
}
