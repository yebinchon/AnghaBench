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
struct atmif_reg {TYPE_1__* aif; } ;
struct TYPE_2__ {int /*<<< orphan*/  notify; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct atmif_reg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmif_reg*) ; 
 int /*<<< orphan*/  link ; 

void
FUNC2(void *arg)
{
	struct atmif_reg *r0 = arg;

	FUNC0(&r0->aif->notify, r0, link);
	FUNC1(r0);
}