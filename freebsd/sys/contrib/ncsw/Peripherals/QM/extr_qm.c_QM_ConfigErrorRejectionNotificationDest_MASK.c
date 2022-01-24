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
typedef  int /*<<< orphan*/  t_QmDcPortalParams ;
typedef  int /*<<< orphan*/ * t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/ * e_DpaaDcPortal ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

t_Error FUNC2(t_Handle h_Qm, e_DpaaDcPortal id, t_QmDcPortalParams *p_Params)
{
    FUNC1(h_Qm); FUNC1(id); FUNC1(p_Params);

    FUNC0(INFO, E_NOT_SUPPORTED, ("Only default ERN destination available."));
}