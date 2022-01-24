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
struct name_table {int /*<<< orphan*/ * str; int /*<<< orphan*/  val; } ;
struct TYPE_5__ {int /*<<< orphan*/ * cr_rights; } ;
typedef  TYPE_1__ cap_rights_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct name_table* caprights ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC4(FILE *fp, cap_rights_t *rightsp)
{
	struct name_table *t;
	int i;
	bool comma;

	for (i = 0; i < FUNC0(rightsp); i++) {
		if (FUNC1(rightsp->cr_rights[i]) != 1 << i) {
			FUNC3(fp, "invalid cap_rights_t");
			return;
		}
	}
	comma = false;
	for (t = caprights; t->str != NULL; t++) {
		if (FUNC2(rightsp, t->val)) {
			FUNC3(fp, "%s%s", comma ? "," : "", t->str);
			comma = true;
		}
	}
}