
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int core_mask; } ;


 int __octeon_uart_unlock () ;
 int cvmx_coremask_barrier_sync (unsigned int) ;
 scalar_t__ cvmx_coremask_first_core (unsigned int) ;
 TYPE_1__* cvmx_sysinfo_get () ;
 int exit (int ) ;

__attribute__((used)) static void exit_on_break(void)
{
    exit(0);
}
