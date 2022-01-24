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
struct TYPE_3__ {int confidentialityEnable; int /*<<< orphan*/  confidentialityOffset; struct TYPE_3__* p_FmMacsecSecYDriverParam; } ;
typedef  TYPE_1__ t_FmMacsecSecY ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

t_Error FUNC1(t_Handle h_FmMacsecSecY, bool confidentialityEnable, uint16_t confidentialityOffset)
{
    t_FmMacsecSecY  *p_FmMacsecSecY = (t_FmMacsecSecY *)h_FmMacsecSecY;

    FUNC0(p_FmMacsecSecY, E_INVALID_HANDLE);
    FUNC0(p_FmMacsecSecY->p_FmMacsecSecYDriverParam, E_INVALID_STATE);

    p_FmMacsecSecY->confidentialityEnable = confidentialityEnable;
    p_FmMacsecSecY->confidentialityOffset = confidentialityOffset;

    return E_OK;
}