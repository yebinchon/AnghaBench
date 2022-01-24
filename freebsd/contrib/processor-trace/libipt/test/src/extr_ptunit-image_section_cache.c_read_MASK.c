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
typedef  int uint8_t ;
struct ptunit_result {int dummy; } ;
struct iscache_fixture {int /*<<< orphan*/  iscache; int /*<<< orphan*/ * section; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,unsigned long long,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct iscache_fixture *cfix)
{
	uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
	int status, isid;

	isid = FUNC0(&cfix->iscache, cfix->section[0], 0xa000ull);
	FUNC3(isid, 0);

	status = FUNC1(&cfix->iscache, buffer, 2ull, isid, 0xa008ull);
	FUNC2(status, 2);
	FUNC5(buffer[0], 0x8);
	FUNC5(buffer[1], 0x9);
	FUNC5(buffer[2], 0xcc);

	return FUNC4();
}