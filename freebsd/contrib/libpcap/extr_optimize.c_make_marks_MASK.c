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
struct icode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct block {TYPE_1__ s; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_RET ; 
 struct block* FUNC1 (struct block*) ; 
 struct block* FUNC2 (struct block*) ; 
 int /*<<< orphan*/  FUNC3 (struct icode*,struct block*) ; 
 int /*<<< orphan*/  FUNC4 (struct icode*,struct block*) ; 

__attribute__((used)) static void
FUNC5(struct icode *ic, struct block *p)
{
	if (!FUNC4(ic, p)) {
		FUNC3(ic, p);
		if (FUNC0(p->s.code) != BPF_RET) {
			FUNC5(ic, FUNC2(p));
			FUNC5(ic, FUNC1(p));
		}
	}
}