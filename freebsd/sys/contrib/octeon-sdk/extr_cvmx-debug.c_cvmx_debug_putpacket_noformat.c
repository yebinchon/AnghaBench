
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* putpacket ) (char*) ;} ;
struct TYPE_3__ {size_t comm_type; } ;


 TYPE_2__** cvmx_debug_comms ;
 TYPE_1__* cvmx_debug_globals ;
 int cvmx_debug_printf (char*,char*) ;
 int stub1 (char*) ;

__attribute__((used)) static int cvmx_debug_putpacket_noformat(char *packet)
{
    if (cvmx_debug_comms[cvmx_debug_globals->comm_type]->putpacket == ((void*)0))
        return 0;
    cvmx_debug_printf("Reply: %s\n", packet);
    return cvmx_debug_comms[cvmx_debug_globals->comm_type]->putpacket(packet);
}
