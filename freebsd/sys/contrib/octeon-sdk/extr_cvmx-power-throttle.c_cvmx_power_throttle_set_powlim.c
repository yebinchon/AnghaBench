
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;


 int CVMX_PTH_INDEX_HRMPOWADJ ;
 int CVMX_PTH_INDEX_MAXPOW ;
 int CVMX_PTH_INDEX_POWLIM ;
 int OCTEON_CN63XX ;
 int OCTEON_CN6XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int assert (int) ;
 scalar_t__ cvmx_power_throttle_csr_addr (int) ;
 scalar_t__ cvmx_power_throttle_get_field (scalar_t__,int ) ;
 scalar_t__ cvmx_power_throttle_set_field (int ,scalar_t__,scalar_t__) ;
 scalar_t__ cvmx_read_csr (scalar_t__) ;
 int cvmx_write_csr (scalar_t__,scalar_t__) ;

__attribute__((used)) static uint64_t cvmx_power_throttle_set_powlim(int ppid,
    uint8_t percentage)
{
    if (OCTEON_IS_MODEL(OCTEON_CN6XXX))
    {
        uint64_t t, csr_addr, r;

        assert(percentage < 101);
        csr_addr = cvmx_power_throttle_csr_addr(ppid);
        r = cvmx_read_csr(csr_addr);

        t = cvmx_power_throttle_get_field(r, CVMX_PTH_INDEX_MAXPOW);
 if (!OCTEON_IS_MODEL(OCTEON_CN63XX))
 {
     uint64_t s;

     s = cvmx_power_throttle_get_field(r, CVMX_PTH_INDEX_HRMPOWADJ);
     assert(t > s);
     t = t - s;
 }

 t = percentage * t / 100;
        r = cvmx_power_throttle_set_field(CVMX_PTH_INDEX_POWLIM, r, t);

        cvmx_write_csr(csr_addr, r);
        return r;
    }
    return 0;
}
