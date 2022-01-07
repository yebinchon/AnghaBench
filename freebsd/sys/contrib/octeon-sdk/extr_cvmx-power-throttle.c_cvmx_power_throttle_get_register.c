
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ cvmx_power_throttle_csr_addr (int) ;
 int cvmx_power_throttle_init () ;
 int cvmx_power_throttle_initialized ;
 scalar_t__ cvmx_read_csr (scalar_t__) ;

uint64_t cvmx_power_throttle_get_register(int ppid)
{
    uint64_t csr_addr;

    if (!cvmx_power_throttle_initialized)
    {
 cvmx_power_throttle_init();
 cvmx_power_throttle_initialized = 1;
    }

    csr_addr = cvmx_power_throttle_csr_addr(ppid);

    if (csr_addr == 0)
        return -1;

    return cvmx_read_csr(csr_addr);
}
