#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct format_opts {int /*<<< orphan*/  last; int /*<<< orphan*/  first; int /*<<< orphan*/  flags; } ;
struct cmdline_opts {scalar_t__ test_only; } ;
struct TYPE_5__ {size_t size; int /*<<< orphan*/  opheader; int /*<<< orphan*/  end_rule; int /*<<< orphan*/  start_rule; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ipfw_cfg_lheader ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IP_FW_XGET ; 
 TYPE_1__* FUNC0 (int,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(struct cmdline_opts *co, struct format_opts *fo,
    ipfw_cfg_lheader **pcfg, size_t *psize)
{
	ipfw_cfg_lheader *cfg;
	size_t sz;
	int i;


	if (co->test_only != 0) {
		FUNC2(stderr, "Testing only, list disabled\n");
		return (0);
	}

	/* Start with some data size */
	sz = 4096;
	cfg = NULL;

	for (i = 0; i < 16; i++) {
		if (cfg != NULL)
			FUNC3(cfg);
		if ((cfg = FUNC0(1, sz)) == NULL)
			return (ENOMEM);

		cfg->flags = fo->flags;
		cfg->start_rule = fo->first;
		cfg->end_rule = fo->last;

		if (FUNC1(IP_FW_XGET, &cfg->opheader, &sz) != 0) {
			if (errno != ENOMEM) {
				FUNC3(cfg);
				return (errno);
			}

			/* Buffer size is not enough. Try to increase */
			sz = sz * 2;
			if (sz < cfg->size)
				sz = cfg->size;
			continue;
		}

		*pcfg = cfg;
		*psize = sz;
		return (0);
	}

	FUNC3(cfg);
	return (ENOMEM);
}