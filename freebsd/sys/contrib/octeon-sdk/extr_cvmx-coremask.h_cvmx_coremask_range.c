
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_COREMASK_MAX ;
 int CVMX_MAX_CORES ;

__attribute__((used)) static inline unsigned int cvmx_coremask_range(unsigned int low, unsigned int high)
{
    return ((CVMX_COREMASK_MAX >> (CVMX_MAX_CORES - 1 - high + low)) << low);
}
