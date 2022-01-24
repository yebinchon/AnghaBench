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
struct null_args {int /*<<< orphan*/  nulla_target; } ;
typedef  int /*<<< orphan*/  nargs ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  MOUNT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct null_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct null_args*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 void FUNC7 (char const*) ; 
 void FUNC8 (char const*) ; 

__attribute__((used)) static void
FUNC9(const atf_tc_t *tc, const char *mp, int expected_errno,
    bool use_layer, void (*pre)(const char *), void (*post)(const char *))
{
	const char *null_mount = "/nullm";
	struct null_args nargs;

	if (use_layer) {
		FUNC0(FUNC4(null_mount, 0777));
		FUNC2(&nargs, 0, sizeof(nargs));
		nargs.nulla_target = FUNC1(mp);;
		FUNC0(FUNC5(MOUNT_NULL, null_mount, 0,
		    &nargs, sizeof(nargs)));
	}
	if (pre)
		(*pre)(use_layer ? null_mount : mp);
	FUNC3(tc, mp, expected_errno);
	if (post)
		(*post)(use_layer ? null_mount : mp);
	if (use_layer)
		FUNC0(FUNC6(null_mount, 0));
}