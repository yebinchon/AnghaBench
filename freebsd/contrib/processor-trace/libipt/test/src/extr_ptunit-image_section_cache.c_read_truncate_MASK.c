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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct iscache_fixture *cfix)
{
	uint8_t buffer[] = { 0xcc, 0xcc };
	int status, isid;

	isid = FUNC0(&cfix->iscache, cfix->section[0], 0xa000ull);
	FUNC3(isid, 0);

	status = FUNC1(&cfix->iscache, buffer, sizeof(buffer), isid,
				 0xa00full);
	FUNC2(status, 1);
	FUNC5(buffer[0], 0xf);
	FUNC5(buffer[1], 0xcc);

	return FUNC4();
}