#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct nat44_cfg_nat {size_t size; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; TYPE_1__ head; } ;
struct TYPE_9__ {int /*<<< orphan*/  opheader; TYPE_2__ ntlv; } ;
typedef  TYPE_3__ ipfw_obj_header ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_3__* FUNC0 (int,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(char *name, uint16_t cmd, ipfw_obj_header **ooh)
{
	ipfw_obj_header *oh;
	struct nat44_cfg_nat *cfg;
	size_t sz;

	/* Start with reasonable default */
	sz = sizeof(*oh) + sizeof(*cfg) + 128;

	for (;;) {
		if ((oh = FUNC0(1, sz)) == NULL)
			return (ENOMEM);
		cfg = (struct nat44_cfg_nat *)(oh + 1);
		oh->ntlv.head.length = sizeof(oh->ntlv);
		FUNC3(oh->ntlv.name, name, sizeof(oh->ntlv.name));
		FUNC3(cfg->name, name, sizeof(cfg->name));

		if (FUNC1(cmd, &oh->opheader, &sz) != 0) {
			sz = cfg->size;
			FUNC2(oh);
			if (errno == ENOMEM)
				continue;
			return (errno);
		}

		*ooh = oh;
		break;
	}

	return (0);
}