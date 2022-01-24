#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int* raw; } ;
struct TYPE_9__ {scalar_t__ Q_Key; int /*<<< orphan*/  scope_mask; int /*<<< orphan*/  FlowLabel; int /*<<< orphan*/  sl; int /*<<< orphan*/  rate; int /*<<< orphan*/  mtu; } ;
struct precreate_mgroup {TYPE_4__ mgid; TYPE_3__ flags; } ;
struct TYPE_7__ {scalar_t__ Q_Key; int /*<<< orphan*/  scope_mask; int /*<<< orphan*/  FlowLabel; int /*<<< orphan*/  sl; int /*<<< orphan*/  rate; int /*<<< orphan*/  mtu; } ;
struct part_conf {int /*<<< orphan*/  p_subn; TYPE_2__* p_prtn; int /*<<< orphan*/  p_log; TYPE_1__ flags; } ;
typedef  int /*<<< orphan*/  pkey ;
typedef  int /*<<< orphan*/  mgroup ;
typedef  int ib_net16_t ;
struct TYPE_8__ {int pkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ OSM_IPOIB_BROADCAST_MGRP_QKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,char*) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct part_conf*,struct precreate_mgroup*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct part_conf*,struct precreate_mgroup*) ; 
 int /*<<< orphan*/  FUNC5 (struct part_conf*,struct precreate_mgroup*) ; 
 int /*<<< orphan*/  FUNC6 (struct part_conf*,struct precreate_mgroup*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct precreate_mgroup*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct precreate_mgroup*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC12(char *p, char *mgid, unsigned lineno, struct part_conf *conf)
{
	int ret = 0;
	struct precreate_mgroup mgroup;

	FUNC8(&mgroup, 0, sizeof(mgroup));

	if (FUNC3(AF_INET6, mgid, &mgroup.mgid) != 1
	    || mgroup.mgid.raw[0] != 0xff) {
		FUNC0(conf->p_log, OSM_LOG_ERROR,
			"PARSE ERROR partition conf file line %d: "
			"mgid \"%s\": gid is not multicast\n", lineno, mgid);
		return 0;
	}

	/* inherit partition flags */
	mgroup.flags.mtu = conf->flags.mtu;
	mgroup.flags.rate = conf->flags.rate;
	mgroup.flags.sl = conf->flags.sl;
	mgroup.flags.Q_Key = conf->flags.Q_Key;
	mgroup.flags.FlowLabel = conf->flags.FlowLabel;
	mgroup.flags.scope_mask = conf->flags.scope_mask;

	/* override with user specified flags */
	ret = FUNC11(conf->p_log, &mgroup, p, lineno);

	/* check/verify special IP group parameters */
	if (FUNC9(&mgroup.mgid)) {
		ib_net16_t pkey = conf->p_prtn->pkey | FUNC2(0x8000);

		if (!FUNC5(conf, &mgroup)
		    || !FUNC6(conf, &mgroup)
		    || !FUNC4(conf, &mgroup))
			goto error;

		/* set special IP settings */
		FUNC7(&mgroup.mgid.raw[4], &pkey, sizeof(pkey));

		if (mgroup.flags.Q_Key == 0)
			mgroup.flags.Q_Key = OSM_IPOIB_BROADCAST_MGRP_QKEY;
	}

	/* don't create multiple copies of the group */
	if (FUNC10(conf->p_subn, &mgroup.mgid))
		goto error;

	/* create the group */
	FUNC1(conf, &mgroup);

error:
	return ret;
}