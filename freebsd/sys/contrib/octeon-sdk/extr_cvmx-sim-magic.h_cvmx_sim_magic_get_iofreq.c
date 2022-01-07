
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_SYNC ;
 int OCTEON_CN6XXX ;
 int OCTEON_CNF7XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int SIM_MAGIC_GET_IOFREQ ;
 int __cvmx_sim_magic_return (int ) ;

__attribute__((used)) static inline int cvmx_sim_magic_get_iofreq(void)
{
    CVMX_SYNC;

    if (OCTEON_IS_MODEL(OCTEON_CN6XXX) || OCTEON_IS_MODEL(OCTEON_CNF7XXX))
       return __cvmx_sim_magic_return(SIM_MAGIC_GET_IOFREQ);
    else
       return 0;
}
