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
struct iscache_fixture {int /*<<< orphan*/  iscache; } ;

/* Variables and functions */
 int /*<<< orphan*/  dfix_init ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iscache_fixture*) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct iscache_fixture *cfix)
{
	int errcode;

	FUNC3(dfix_init, cfix);

	errcode = FUNC0(&cfix->iscache, NULL);
	FUNC1(errcode, 0);

	return FUNC2();
}