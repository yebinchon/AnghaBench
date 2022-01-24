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
typedef  scalar_t__ t_Handle ;
struct TYPE_3__ {uintptr_t baseAddr; } ;
typedef  TYPE_1__ t_Fm ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 uintptr_t FM_MM_KG ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uintptr_t FUNC2(t_Handle h_Fm)
{
    t_Fm        *p_Fm = (t_Fm*)h_Fm;

    FUNC1(p_Fm, E_INVALID_HANDLE, 0);

    if (!p_Fm->baseAddr)
    {
        FUNC0(MAJOR, E_INVALID_STATE,
                     ("No base-addr; probably Guest with IPC!"));
        return 0;
    }

    return (p_Fm->baseAddr + FM_MM_KG);
}