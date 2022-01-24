#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * raw; } ;
struct precreate_mgroup {TYPE_2__ mgid; } ;
struct part_conf {TYPE_1__* p_prtn; int /*<<< orphan*/  p_log; } ;
typedef  int ib_net16_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_3__ {int pkey; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FALSE ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static inline boolean_t FUNC5(struct part_conf *conf,
					  struct precreate_mgroup *group)
{
	ib_net16_t mpkey = *(ib_net16_t *)&group->mgid.raw[4];
	char gid_str[INET6_ADDRSTRLEN];

	if (FUNC4(&group->mgid)
	    /* user requested "wild card" of pkey */
	    || mpkey == 0x0000
	    /* user was smart enough to match */
	    || mpkey == (conf->p_prtn->pkey | FUNC1(0x8000)))
		return (TRUE);

	FUNC0(conf->p_log, OSM_LOG_ERROR,
		"IP MC group (%s) specified with invalid pkey 0x%04x "
		"for partition pkey = 0x%04x (%s)\n",
		FUNC3(AF_INET6, group->mgid.raw, gid_str, sizeof gid_str),
		FUNC2(mpkey), FUNC2(conf->p_prtn->pkey), conf->p_prtn->name);
	return (FALSE);
}