#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ h_Mem; } ;
typedef  TYPE_1__ t_FmMuram ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

t_Error FUNC2(t_Handle h_FmMuram)
{
    t_FmMuram   *p_FmMuram = ( t_FmMuram *)h_FmMuram;

    if (p_FmMuram->h_Mem)
        FUNC0(p_FmMuram->h_Mem);

    FUNC1(h_FmMuram);

    return E_OK;
}