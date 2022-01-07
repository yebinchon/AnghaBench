
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ board_type; } ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 int CVMX_BREAK ;
 int cvmx_debug_finish () ;
 TYPE_1__* cvmx_sysinfo_get () ;

void __cvmx_app_exit(void)
{
    cvmx_debug_finish();

    if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_SIM)
    {
        CVMX_BREAK;
    }



    while (1);
}
