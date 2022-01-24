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
struct TYPE_5__ {int /*<<< orphan*/  p_LowQmPortal; int /*<<< orphan*/  disable_count; } ;
typedef  TYPE_1__ t_QmPortal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(t_QmPortal *p_QmPortal)
{
    FUNC0(p_QmPortal);
    if (!(p_QmPortal->disable_count++))
        FUNC2(p_QmPortal->p_LowQmPortal, 0);
    FUNC1(p_QmPortal);
}