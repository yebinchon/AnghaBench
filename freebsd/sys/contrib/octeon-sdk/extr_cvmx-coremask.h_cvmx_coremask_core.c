
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int cvmx_coremask_core(unsigned int core_id)
{
    return (1u << core_id);
}
