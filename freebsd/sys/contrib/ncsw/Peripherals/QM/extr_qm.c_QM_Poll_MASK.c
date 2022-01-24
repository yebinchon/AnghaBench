#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  t_QmPortal ;
typedef  int /*<<< orphan*/  t_Qm ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  e_QmPortalPollSource ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

t_Error FUNC3(t_Handle h_Qm, e_QmPortalPollSource source)
{
    t_Qm        *p_Qm = (t_Qm *)h_Qm;
    t_QmPortal  *p_QmPortal;

    FUNC2(p_Qm, E_INVALID_HANDLE);
    p_QmPortal = FUNC1(p_Qm);
    FUNC2(p_QmPortal, E_INVALID_HANDLE);

    return FUNC0(p_QmPortal, source);
}