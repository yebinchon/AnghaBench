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
struct ptunit_result {int dummy; } ;
struct pt_retstack {int dummy; } ;
typedef  int /*<<< orphan*/  retstack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_retstack*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_retstack*) ; 
 int FUNC2 (struct pt_retstack*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 

__attribute__((used)) static struct ptunit_result FUNC5(void)
{
	struct pt_retstack retstack;
	int status;

	FUNC0(&retstack, 0xcd, sizeof(retstack));

	FUNC1(&retstack);

	status = FUNC2(&retstack);
	FUNC3(status, 0);

	return FUNC4();
}