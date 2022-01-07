
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cvmx_coremask_core (int ) ;
 int cvmx_get_core_num () ;

__attribute__((used)) static inline int cvmx_coremask_is_member(unsigned int coremask)
{
    return ((cvmx_coremask_core(cvmx_get_core_num()) & coremask) != 0);
}
