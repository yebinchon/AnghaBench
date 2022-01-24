#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tablename; } ;
typedef  TYPE_1__ ipfw_xtable_info ;
typedef  int /*<<< orphan*/  ipfw_obj_header ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(ipfw_xtable_info *i, void *arg)
{
	ipfw_obj_header *oh;
	int error;
	int is_all;

	is_all = arg == NULL ? 0 : 1;

	if ((error = FUNC2(i, &oh)) != 0) {
		FUNC0(EX_OSERR, "Error requesting table %s list", i->tablename);
		return (error);
	}

	FUNC3(oh, is_all);

	FUNC1(oh);
	return (0);	
}