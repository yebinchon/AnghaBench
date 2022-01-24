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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ h_Mem; } ;
typedef  TYPE_1__ t_FmMuram ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t FUNC2(t_Handle h_FmMuram)
{
    t_FmMuram   *p_FmMuram = ( t_FmMuram *)h_FmMuram;

    FUNC1(h_FmMuram, E_INVALID_HANDLE, 0);
    FUNC1(p_FmMuram->h_Mem, E_INVALID_HANDLE, 0);

    return FUNC0(p_FmMuram->h_Mem);
}