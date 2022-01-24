#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cvmx_debug_command_t ;
struct TYPE_4__ {scalar_t__ (* getpacket ) (char*,int) ;} ;
struct TYPE_3__ {size_t comm_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_NOP ; 
 int CVMX_DEBUG_MAX_REQUEST_SIZE ; 
 TYPE_2__** cvmx_debug_comms ; 
 TYPE_1__* cvmx_debug_globals ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int) ; 

__attribute__((used)) static cvmx_debug_command_t FUNC3(void)
{
    char packet[CVMX_DEBUG_MAX_REQUEST_SIZE];
    if (cvmx_debug_comms[cvmx_debug_globals->comm_type]->getpacket(packet, CVMX_DEBUG_MAX_REQUEST_SIZE))
    {
        FUNC0("Request: %s\n", packet);
        return FUNC1(packet);
    }
    return COMMAND_NOP;
}