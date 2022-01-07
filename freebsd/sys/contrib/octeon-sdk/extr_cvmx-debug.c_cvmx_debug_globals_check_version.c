
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ version; } ;


 scalar_t__ CVMX_DEBUG_GLOBALS_VERSION ;
 TYPE_1__* cvmx_debug_globals ;
 int cvmx_dprintf (char*,int,int) ;
 int panic (char*) ;

__attribute__((used)) static void cvmx_debug_globals_check_version(void)
{
    if (cvmx_debug_globals->version != CVMX_DEBUG_GLOBALS_VERSION)
    {
        cvmx_dprintf("Wrong version on the globals struct spinining; expected %d, got:  %d.\n", (int)CVMX_DEBUG_GLOBALS_VERSION, (int)(cvmx_debug_globals->version));



        while (1)
            ;
    }
}
