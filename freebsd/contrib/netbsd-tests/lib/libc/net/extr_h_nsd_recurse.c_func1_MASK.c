#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* member_0; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_1__ ns_dtab ;

/* Variables and functions */
#define  func2 128 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  testsrc ; 

__attribute__((used)) static int
FUNC2(void)
{
	static const ns_dtab dtab[] = {
		{ "test",	func2,		NULL },
		{ NULL, NULL, NULL }
	};
	int r;

	(void)FUNC1("func1: enter\n");
	r = FUNC0(NULL, dtab, "test", "test", testsrc);
	(void)FUNC1("func1: exit\n");

	return r;
}