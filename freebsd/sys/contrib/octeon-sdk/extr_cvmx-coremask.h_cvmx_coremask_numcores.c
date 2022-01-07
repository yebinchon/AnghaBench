
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CVMX_COREMASK_MAX ;
 unsigned int CVMX_MAX_CORES ;

__attribute__((used)) static inline unsigned int cvmx_coremask_numcores(unsigned int num_cores)
{
    return (CVMX_COREMASK_MAX >> (CVMX_MAX_CORES - num_cores));
}
