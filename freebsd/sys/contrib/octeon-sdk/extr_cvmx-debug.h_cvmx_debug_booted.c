
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bootloader_config_flags; } ;


 int CVMX_BOOTINFO_CFG_FLAG_DEBUG ;
 TYPE_1__* cvmx_sysinfo_get () ;

__attribute__((used)) static inline int cvmx_debug_booted(void)
{
    return cvmx_sysinfo_get()->bootloader_config_flags & CVMX_BOOTINFO_CFG_FLAG_DEBUG;
}
