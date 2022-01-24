#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_4__ {TYPE_2__* netEnvs; } ;
typedef  TYPE_1__ t_FmPcd ;
struct TYPE_5__ {int /*<<< orphan*/  owners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC3(t_Handle h_FmPcd, uint8_t netEnvId)
{
    uint32_t    intFlags;

    FUNC0(h_FmPcd);

    intFlags = FUNC1(&((t_FmPcd*)h_FmPcd)->netEnvs[netEnvId]);
    ((t_FmPcd*)h_FmPcd)->netEnvs[netEnvId].owners++;
    FUNC2(&((t_FmPcd*)h_FmPcd)->netEnvs[netEnvId], intFlags);
}