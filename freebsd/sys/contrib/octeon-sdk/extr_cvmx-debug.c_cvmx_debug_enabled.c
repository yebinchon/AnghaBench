
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CVMX_DEBUG_ATTACH ;
 scalar_t__ cvmx_debug_booted () ;

__attribute__((used)) static int cvmx_debug_enabled(void)
{
    return cvmx_debug_booted() || CVMX_DEBUG_ATTACH;
}
