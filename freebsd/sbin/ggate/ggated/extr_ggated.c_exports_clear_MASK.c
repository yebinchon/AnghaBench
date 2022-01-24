#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ggd_export {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ggd_export* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_next ; 
 int /*<<< orphan*/  exports ; 
 int /*<<< orphan*/  FUNC3 (struct ggd_export*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct ggd_export *ex;

	while (!FUNC0(&exports)) {
		ex = FUNC1(&exports);
		FUNC2(&exports, e_next);
		FUNC3(ex);
	}
}