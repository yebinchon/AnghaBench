#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fabric {scalar_t__ ca_cnt; scalar_t__ switch_cnt; scalar_t__ link_cnt; TYPE_2__* osm; } ;
struct torus_context {struct torus* torus; TYPE_2__* osm; struct fabric fabric; } ;
struct torus {int flags; TYPE_2__* osm; scalar_t__ ca_cnt; scalar_t__ switch_cnt; scalar_t__ link_cnt; scalar_t__ z_sz; scalar_t__ y_sz; scalar_t__ x_sz; } ;
struct TYPE_6__ {int /*<<< orphan*/  qos_options; int /*<<< orphan*/  qos_rtr_options; int /*<<< orphan*/  qos_sw0_options; int /*<<< orphan*/  qos_ca_options; int /*<<< orphan*/  qos_swe_options; int /*<<< orphan*/  torus_conf_file; int /*<<< orphan*/  qos; } ;
typedef  TYPE_3__ osm_subn_opt_t ;
typedef  int /*<<< orphan*/  osm_log_t ;
struct TYPE_4__ {TYPE_3__ opt; scalar_t__ min_sw_data_vls; scalar_t__ min_data_vls; } ;
struct TYPE_5__ {int /*<<< orphan*/  log; TYPE_1__ subn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int NOTIFY_CHANGES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  OSM_LOG_INFO ; 
 int /*<<< orphan*/  FUNC2 (struct fabric*,struct torus*) ; 
 struct torus* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fabric*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fabric*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct fabric*,struct torus*) ; 
 int /*<<< orphan*/  FUNC9 (struct torus*,struct torus*) ; 
 scalar_t__ FUNC10 (struct torus*,struct fabric*) ; 
 int FUNC11 (struct torus*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct fabric*) ; 
 int /*<<< orphan*/  FUNC14 (struct torus*) ; 
 int /*<<< orphan*/  FUNC15 (struct torus*,struct fabric*) ; 

__attribute__((used)) static
int FUNC16(void *context)
{
	int status = -1;
	struct torus_context *ctx = context;
	struct fabric *fabric;
	struct torus *torus;

	if (!ctx->osm->subn.opt.qos) {
		FUNC1(&ctx->osm->log, OSM_LOG_ERROR,
			"ERR 4E44: Routing engine list contains torus-2QoS. "
			"Enable QoS for correct operation "
			"(-Q or 'qos TRUE' in opensm.conf).\n");
		return status;
	}

	fabric = &ctx->fabric;
	FUNC13(fabric);

	torus = FUNC3(1, sizeof(*torus));
	if (!torus) {
		FUNC1(&ctx->osm->log, OSM_LOG_ERROR,
			"ERR 4E45: allocating torus: %s\n", FUNC12(errno));
		goto out;
	}
	torus->osm = ctx->osm;
	fabric->osm = ctx->osm;

	if (!FUNC8(ctx->osm->subn.opt.torus_conf_file,
			  fabric, torus))
		goto out;

	if (!FUNC4(fabric))
		goto out;

	FUNC1(&torus->osm->log, OSM_LOG_INFO,
		"Found fabric w/ %d links, %d switches, %d CA ports, "
		"minimum data VLs: endport %d, switchport %d\n",
		(int)fabric->link_cnt, (int)fabric->switch_cnt,
		(int)fabric->ca_cnt, (int)ctx->osm->subn.min_data_vls,
		(int)ctx->osm->subn.min_sw_data_vls);

	if (!FUNC15(torus, fabric))
		goto out;

	FUNC1(&torus->osm->log, OSM_LOG_INFO,
		"Looking for %d x %d x %d %s\n",
		(int)torus->x_sz, (int)torus->y_sz, (int)torus->z_sz,
		(FUNC0(torus->flags) ? "mesh" : "torus"));

	if (!FUNC2(fabric, torus)) {
		FUNC1(&torus->osm->log, OSM_LOG_ERROR, "ERR 4E57: "
			"build_torus finished with errors\n");
		goto out;
	}

	FUNC1(&torus->osm->log, OSM_LOG_INFO,
		"Built %d x %d x %d %s w/ %d links, %d switches, %d CA ports\n",
		(int)torus->x_sz, (int)torus->y_sz, (int)torus->z_sz,
		(FUNC0(torus->flags) ? "mesh" : "torus"),
		(int)torus->link_cnt, (int)torus->switch_cnt,
		(int)torus->ca_cnt);

	FUNC7(fabric);
	/*
	 * Since we found some sort of torus fabric, report on any topology
	 * changes vs. the last torus we found.
	 */
	if (torus->flags & NOTIFY_CHANGES)
		FUNC9(torus, ctx->torus);

	if (FUNC10(torus, fabric))
		status = FUNC11(torus);

out:
	if (status) {		/* bad torus!! */
		if (torus)
			FUNC14(torus);
	} else {
		osm_subn_opt_t *opt = &torus->osm->subn.opt;
		osm_log_t *log = &torus->osm->log;

		if (ctx->torus)
			FUNC14(ctx->torus);
		ctx->torus = torus;

		FUNC6(&opt->qos_swe_options, &opt->qos_options,
				     log);

		FUNC5(&opt->qos_ca_options,
				    &opt->qos_options, "qos_ca", log);
		FUNC5(&opt->qos_sw0_options,
				    &opt->qos_options, "qos_sw0", log);
		FUNC5(&opt->qos_rtr_options,
				    &opt->qos_options, "qos_rtr", log);
	}
	FUNC13(fabric);
	return status;
}