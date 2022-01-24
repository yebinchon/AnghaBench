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
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_4__ {scalar_t__ cpu; int /*<<< orphan*/  h_Bm; } ;
typedef  TYPE_1__ t_BmPortal ;
typedef  int /*<<< orphan*/  e_DpaaSwPortal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

t_Error FUNC4(t_Handle h_BmPortal)
{
    t_BmPortal  *p_BmPortal = (t_BmPortal *)h_BmPortal;

    if (!p_BmPortal)
       return FUNC1(E_INVALID_HANDLE);
    FUNC0(p_BmPortal->h_Bm, NULL, (e_DpaaSwPortal)p_BmPortal->cpu);
    FUNC3(p_BmPortal);
    FUNC2(p_BmPortal);
    return E_OK;
}