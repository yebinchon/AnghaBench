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
typedef  scalar_t__ ufs2_daddr_t ;

/* Variables and functions */
 scalar_t__ Eflag ; 
 scalar_t__ Zflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  fswritefd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  sblock ; 

__attribute__((used)) static void
FUNC5(ufs2_daddr_t start, ufs2_daddr_t end)
{

	if (debug)
		FUNC4("Zero frags %jd to %jd\n", start, end);
	if (Zflag)
		FUNC1(fswritefd, FUNC2(&sblock, start),
		    FUNC3(&sblock, end - start + 1));
	if (Eflag)
		FUNC0(fswritefd, FUNC2(&sblock, start),
		    FUNC3(&sblock, end - start + 1));
}