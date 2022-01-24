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
typedef  int uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_3__ {int /*<<< orphan*/  h_App; int /*<<< orphan*/  (* f_Exception ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_1__ t_FmPort ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int IM_EV_BSY ; 
 int IM_EV_RX ; 
 int /*<<< orphan*/  e_FM_PORT_EXCEPTION_IM_BUSY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(t_Handle h_FmPort, uint32_t event)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    FUNC0(((event & (IM_EV_RX | IM_EV_BSY)) && FUNC1(p_FmPort->h_Fm)) ||
                !FUNC1(p_FmPort->h_Fm));

    if (event & IM_EV_RX)
        FUNC2(p_FmPort);
    if ((event & IM_EV_BSY) && p_FmPort->f_Exception)
        p_FmPort->f_Exception(p_FmPort->h_App, e_FM_PORT_EXCEPTION_IM_BUSY);
}