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
struct TYPE_2__ {int /*<<< orphan*/  filters; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct filter_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct filter_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct filter_info* FUNC3(struct rar5* rar) {
	struct filter_info* f =
		(struct filter_info*) FUNC0(1, sizeof(struct filter_info));

	if(!f) {
		return NULL;
	}

	FUNC2(&rar->cstate.filters, FUNC1(f));
	return f;
}