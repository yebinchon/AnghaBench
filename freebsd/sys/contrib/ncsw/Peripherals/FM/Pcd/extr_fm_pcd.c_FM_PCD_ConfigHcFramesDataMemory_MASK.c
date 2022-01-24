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
struct TYPE_4__ {struct TYPE_4__* h_Hc; } ;
typedef  TYPE_1__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

t_Error FUNC2(t_Handle h_FmPcd, uint8_t memId)
{
    t_FmPcd         *p_FmPcd = (t_FmPcd*)h_FmPcd;

    FUNC1(p_FmPcd, E_INVALID_HANDLE);
    FUNC1(p_FmPcd->h_Hc, E_INVALID_HANDLE);

    return FUNC0(p_FmPcd->h_Hc, memId);
}