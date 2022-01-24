#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_2__ {int /*<<< orphan*/  ipf_refcnt; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 TYPE_1__ ipfmain ; 
 int FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static int
FUNC2(module_t mod, int type, void *unused)
{
	int error = 0;

	switch (type)
	{
	case MOD_LOAD :
		error = FUNC0();
		if (!error)
			ipfmain.ipf_refcnt++;
		break;
	case MOD_UNLOAD :
		error = FUNC1();
		if (!error)
			ipfmain.ipf_refcnt--;
		break;
	default:
		error = EINVAL;
		break;
	}
	return error;
}