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
typedef  int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_retstack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_retstack*) ; 
 int FUNC1 (struct pt_retstack*,int*) ; 
 int /*<<< orphan*/  pte_retstack_empty ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC5(void)
{
	struct pt_retstack retstack;
	uint64_t ip;
	int status;

	FUNC0(&retstack);

	ip = 0x42ull;
	status = FUNC1(&retstack, &ip);
	FUNC2(status, -pte_retstack_empty);
	FUNC4(ip, 0x42ull);

	return FUNC3();
}