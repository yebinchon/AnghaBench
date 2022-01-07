
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_SYNC ;
 int SIM_MAGIC_SIMPRINTF ;
 int __cvmx_sim_magic_no_return (int ) ;

__attribute__((used)) static inline void __cvmx_sim_magic_simprintf(const char *format, ...)
{
    CVMX_SYNC;

    __cvmx_sim_magic_no_return( SIM_MAGIC_SIMPRINTF);
}
