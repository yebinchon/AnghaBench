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
struct trail {scalar_t__ tr_magic; int /*<<< orphan*/  tr_filename; int /*<<< orphan*/  tr_dirfp; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 scalar_t__ HALF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TRAIL_MAGIC ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(struct trail *trail)
{
	struct dirent *dp;

	FUNC0(trail->tr_magic == TRAIL_MAGIC);
	FUNC0(FUNC6(trail->tr_filename));

	FUNC3(trail->tr_dirfp);
	while ((dp = FUNC2(trail->tr_dirfp)) != NULL) {
		if (FUNC5(dp->d_name, trail->tr_filename, HALF_LEN + 1) == 0)
			break;
	}
	if (dp == NULL)
		return (false);
	FUNC1(FUNC4(trail->tr_filename, dp->d_name,
	    sizeof(trail->tr_filename)) < sizeof(trail->tr_filename));
	return (true);
}