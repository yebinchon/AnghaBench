#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* curve448_scalar_t ;
struct TYPE_7__ {int /*<<< orphan*/  limb; } ;

/* Variables and functions */
 int /*<<< orphan*/  sc_p ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(curve448_scalar_t out, const curve448_scalar_t a,
                         const curve448_scalar_t b)
{
    FUNC0(out, a->limb, b, sc_p, 0);
}