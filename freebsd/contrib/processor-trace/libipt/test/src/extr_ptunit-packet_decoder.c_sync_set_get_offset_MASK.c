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
typedef  int /*<<< orphan*/  uint64_t ;
struct test_fixture {int /*<<< orphan*/  decoder; } ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct test_fixture *tfix)
{
	uint64_t offset;
	int errcode;

	errcode = FUNC1(&tfix->decoder, 1ull);
	FUNC2(errcode, 0);

	errcode = FUNC0(&tfix->decoder, &offset);
	FUNC2(errcode, 0);
	FUNC4(offset, 1ull);

	return FUNC3();
}