#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t size; } ;
typedef  TYPE_1__ ipfw_xtable_info ;
struct TYPE_12__ {int version; } ;
struct TYPE_11__ {TYPE_8__ opheader; } ;
typedef  TYPE_2__ ipfw_obj_header ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  IP_FW_TABLE_XLIST ; 
 TYPE_2__* FUNC0 (int,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_8__*,size_t*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(ipfw_xtable_info *i, ipfw_obj_header **poh)
{
	ipfw_obj_header *oh;
	size_t sz;
	int c;

	sz = 0;
	oh = NULL;
	for (c = 0; c < 8; c++) {
		if (sz < i->size)
			sz = i->size + 44;
		if (oh != NULL)
			FUNC2(oh);
		if ((oh = FUNC0(1, sz)) == NULL)
			continue;
		FUNC3(oh, i);
		oh->opheader.version = 1; /* Current version */
		if (FUNC1(IP_FW_TABLE_XLIST, &oh->opheader, &sz) == 0) {
			*poh = oh;
			return (0);
		}

		if (errno != ENOMEM)
			break;
	}
	FUNC2(oh);

	return (errno);
}