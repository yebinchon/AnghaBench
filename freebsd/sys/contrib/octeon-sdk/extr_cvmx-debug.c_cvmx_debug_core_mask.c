
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int core_mask; } ;


 TYPE_1__* cvmx_sysinfo_get () ;
 int octeon_get_boot_coremask () ;

__attribute__((used)) static inline uint32_t cvmx_debug_core_mask(void)
{





return cvmx_sysinfo_get()->core_mask;



}
