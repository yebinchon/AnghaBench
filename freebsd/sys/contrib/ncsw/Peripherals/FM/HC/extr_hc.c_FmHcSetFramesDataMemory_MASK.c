#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_4__ {scalar_t__* p_Frm; int /*<<< orphan*/  dataMemId; } ;
typedef  TYPE_1__ t_FmHc ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int HC_CMD_POOL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

t_Error FUNC3(t_Handle h_FmHc,
                                uint8_t  memId)
{
    t_FmHc  *p_FmHc = (t_FmHc*)h_FmHc;
    int     i;

    FUNC1(p_FmHc, E_INVALID_HANDLE);

    p_FmHc->dataMemId            = memId;

    for (i=0; i<HC_CMD_POOL_SIZE; i++)
        if (p_FmHc->p_Frm[i])
            FUNC2(p_FmHc->p_Frm[i]);

    return FUNC0(p_FmHc);
}