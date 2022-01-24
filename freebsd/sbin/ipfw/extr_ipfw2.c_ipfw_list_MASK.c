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
typedef  scalar_t__ uint32_t ;
struct format_opts {scalar_t__ first; scalar_t__ last; int show_counters; int show_time; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  sfo ;
typedef  int /*<<< orphan*/  ipfw_cfg_lheader ;
struct TYPE_4__ {int do_time; int do_dynamic; scalar_t__ do_pipe; scalar_t__ test_only; } ;

/* Variables and functions */
 int EX_OK ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  IPFW_CFG_GET_COUNTERS ; 
 int /*<<< orphan*/  IPFW_CFG_GET_STATES ; 
 int /*<<< orphan*/  IPFW_CFG_GET_STATIC ; 
 TYPE_1__ co ; 
 int /*<<< orphan*/  FUNC0 (int,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,struct format_opts*,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC6 (TYPE_1__*,struct format_opts*,int /*<<< orphan*/ *,size_t,int,char**) ; 
 int /*<<< orphan*/  FUNC7 (struct format_opts*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char*,char**,int) ; 

void
FUNC9(int ac, char *av[], int show_counters)
{
	ipfw_cfg_lheader *cfg;
	struct format_opts sfo;
	size_t sz;
	int error;
	int lac;
	char **lav;
	uint32_t rnum;
	char *endptr;

	if (co.test_only) {
		FUNC3(stderr, "Testing only, list disabled\n");
		return;
	}
	if (co.do_pipe) {
		FUNC0(ac, av, show_counters);
		return;
	}

	ac--;
	av++;
	FUNC7(&sfo, 0, sizeof(sfo));

	/* Determine rule range to request */
	if (ac > 0) {
		for (lac = ac, lav = av; lac != 0; lac--) {
			rnum = FUNC8(*lav++, &endptr, 10);
			if (sfo.first == 0 || rnum < sfo.first)
				sfo.first = rnum;

			if (*endptr == '-')
				rnum = FUNC8(endptr + 1, &endptr, 10);
			if (sfo.last == 0 || rnum > sfo.last)
				sfo.last = rnum;
		}
	}

	/* get configuraion from kernel */
	cfg = NULL;
	sfo.show_counters = show_counters;
	sfo.show_time = co.do_time;
	if (co.do_dynamic != 2)
		sfo.flags |= IPFW_CFG_GET_STATIC;
	if (co.do_dynamic != 0)
		sfo.flags |= IPFW_CFG_GET_STATES;
	if ((sfo.show_counters | sfo.show_time) != 0)
		sfo.flags |= IPFW_CFG_GET_COUNTERS;
	if (FUNC5(&co, &sfo, &cfg, &sz) != 0)
		FUNC1(EX_OSERR, "retrieving config failed");

	error = FUNC6(&co, &sfo, cfg, sz, ac, av);

	FUNC4(cfg);

	if (error != EX_OK)
		FUNC2(error);
}