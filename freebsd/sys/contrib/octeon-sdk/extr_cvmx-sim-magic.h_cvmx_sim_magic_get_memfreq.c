
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_SYNC ;
 int SIM_MAGIC_GET_MEMFREQ ;
 int __cvmx_sim_magic_return (int ) ;

__attribute__((used)) static inline int cvmx_sim_magic_get_memfreq(void)
{
    CVMX_SYNC;

    return __cvmx_sim_magic_return(SIM_MAGIC_GET_MEMFREQ);
}
