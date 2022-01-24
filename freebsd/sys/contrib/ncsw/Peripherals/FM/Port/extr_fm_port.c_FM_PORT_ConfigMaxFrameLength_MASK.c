#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_3__ {int /*<<< orphan*/  maxFrameLength; struct TYPE_3__* p_FmPortDriverParam; } ;
typedef  TYPE_1__ t_FmPort ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

t_Error FUNC1(t_Handle h_FmPort, uint16_t length)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    FUNC0(p_FmPort, E_INVALID_HANDLE);
    FUNC0(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);

    p_FmPort->maxFrameLength = length;

    return E_OK;
}