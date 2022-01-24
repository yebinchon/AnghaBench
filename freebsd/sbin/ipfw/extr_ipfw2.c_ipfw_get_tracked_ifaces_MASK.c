#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  req ;
struct TYPE_6__ {size_t size; int /*<<< orphan*/  opheader; } ;
typedef  TYPE_1__ ipfw_obj_lheader ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  IP_FW_XIFLIST ; 
 TYPE_1__* FUNC0 (int,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(ipfw_obj_lheader **polh)
{
	ipfw_obj_lheader req, *olh;
	size_t sz;

	FUNC3(&req, 0, sizeof(req));
	sz = sizeof(req);

	if (FUNC1(IP_FW_XIFLIST, &req.opheader, &sz) != 0) {
		if (errno != ENOMEM)
			return (errno);
	}

	sz = req.size;
	if ((olh = FUNC0(1, sz)) == NULL)
		return (ENOMEM);

	olh->size = sz;
	if (FUNC1(IP_FW_XIFLIST, &olh->opheader, &sz) != 0) {
		FUNC2(olh);
		return (errno);
	}

	*polh = olh;
	return (0);
}