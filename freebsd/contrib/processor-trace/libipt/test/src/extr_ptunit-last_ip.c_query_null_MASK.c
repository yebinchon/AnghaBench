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
typedef  unsigned long long uint64_t ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned long long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_internal ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	uint64_t ip = 13ull;
	int errcode;

	errcode = FUNC0(&ip, NULL);
	FUNC1(errcode, -pte_internal);
	FUNC3(ip, 13ull);

	return FUNC2();
}