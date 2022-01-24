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
struct descriptors {scalar_t__ testdir; void* root; void* usr; void* etc; int /*<<< orphan*/  binary; } ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 char* FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*) ; 
 void* FUNC4 (void*,char*) ; 

__attribute__((used)) static void
FUNC5(struct descriptors *dp, const atf_tc_t *tc)
{

	dp->testdir = FUNC3(FUNC1(tc, "srcdir"));
	FUNC0(dp->testdir >= 0);
	FUNC0(
	    (dp->binary = FUNC2(dp->testdir, "target", O_RDONLY)) >= 0);

	FUNC0((dp->root = FUNC3("/")) >= 0);
	FUNC0((dp->etc = FUNC4(dp->root, "etc")) >= 0);
	FUNC0((dp->usr = FUNC4(dp->root, "usr")) >= 0);
}