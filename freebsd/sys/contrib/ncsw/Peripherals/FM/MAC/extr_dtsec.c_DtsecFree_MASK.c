#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_5__ {struct TYPE_5__* p_DtsecDriverParam; } ;
typedef  TYPE_1__ t_Dtsec ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static t_Error FUNC3(t_Handle h_Dtsec)
{
    t_Dtsec      *p_Dtsec = (t_Dtsec *)h_Dtsec;

    FUNC1(p_Dtsec, E_INVALID_HANDLE);

    if (p_Dtsec->p_DtsecDriverParam)
    {
        /* Called after config */
        FUNC2(p_Dtsec->p_DtsecDriverParam);
        p_Dtsec->p_DtsecDriverParam = NULL;
    }
    else
        /* Called after init */
        FUNC0(p_Dtsec);

    FUNC2(p_Dtsec);

    return E_OK;
}