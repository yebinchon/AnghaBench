
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cvmx_debug_command_t ;
struct TYPE_4__ {scalar_t__ (* getpacket ) (char*,int) ;} ;
struct TYPE_3__ {size_t comm_type; } ;


 int COMMAND_NOP ;
 int CVMX_DEBUG_MAX_REQUEST_SIZE ;
 TYPE_2__** cvmx_debug_comms ;
 TYPE_1__* cvmx_debug_globals ;
 int cvmx_debug_printf (char*,char*) ;
 int cvmx_debug_process_packet (char*) ;
 scalar_t__ stub1 (char*,int) ;

__attribute__((used)) static cvmx_debug_command_t cvmx_debug_process_next_packet(void)
{
    char packet[CVMX_DEBUG_MAX_REQUEST_SIZE];
    if (cvmx_debug_comms[cvmx_debug_globals->comm_type]->getpacket(packet, CVMX_DEBUG_MAX_REQUEST_SIZE))
    {
        cvmx_debug_printf("Request: %s\n", packet);
        return cvmx_debug_process_packet(packet);
    }
    return COMMAND_NOP;
}
