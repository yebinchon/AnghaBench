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
struct TYPE_3__ {scalar_t__ resAddr; int /*<<< orphan*/  h_FmMuram; scalar_t__ fifoBaseAddr; scalar_t__ camBaseAddr; } ;
typedef  TYPE_1__ t_Fm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(t_Fm *p_Fm)
{
    if (p_Fm->camBaseAddr)
       FUNC0(p_Fm->h_FmMuram, FUNC1(p_Fm->camBaseAddr));
    if (p_Fm->fifoBaseAddr)
       FUNC0(p_Fm->h_FmMuram, FUNC1(p_Fm->fifoBaseAddr));
    if (p_Fm->resAddr)
       FUNC0(p_Fm->h_FmMuram, FUNC1(p_Fm->resAddr));
}