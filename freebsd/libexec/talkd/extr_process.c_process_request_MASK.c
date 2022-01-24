#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ sa_family; } ;
struct TYPE_17__ {scalar_t__ sa_family; } ;
struct TYPE_20__ {int type; scalar_t__ vers; char* l_name; void* id_num; TYPE_2__ addr; void* pid; TYPE_1__ ctl_addr; } ;
struct TYPE_19__ {int type; void* answer; TYPE_2__ addr; void* id_num; scalar_t__ vers; } ;
typedef  TYPE_3__ CTL_RESPONSE ;
typedef  TYPE_4__ CTL_MSG ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
#define  ANNOUNCE 131 
 void* BADADDR ; 
 void* BADCTLADDR ; 
 void* BADVERSION ; 
#define  DELETE 130 
 void* FAILED ; 
#define  LEAVE_INVITE 129 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  LOG_WARNING ; 
#define  LOOK_UP 128 
 void* NOT_HERE ; 
 void* SUCCESS ; 
 scalar_t__ TALK_VERSION ; 
 void* UNKNOWN_REQUEST ; 
 scalar_t__ debug ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_4__* FUNC2 (TYPE_4__*) ; 
 TYPE_4__* FUNC3 (TYPE_4__*) ; 
 void* FUNC4 (void*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 void* FUNC8 (void*) ; 
 void* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 

void
FUNC13(CTL_MSG *mp, CTL_RESPONSE *rp)
{
	CTL_MSG *ptr;
	char *s;

	rp->vers = TALK_VERSION;
	rp->type = mp->type;
	rp->id_num = FUNC4(0);
	if (mp->vers != TALK_VERSION) {
		FUNC12(LOG_WARNING, "bad protocol version %d", mp->vers);
		rp->answer = BADVERSION;
		return;
	}
	mp->id_num = FUNC8(mp->id_num);
	mp->addr.sa_family = FUNC9(mp->addr.sa_family);
	if (mp->addr.sa_family != AF_INET) {
		FUNC12(LOG_WARNING, "bad address, family %d",
		    mp->addr.sa_family);
		rp->answer = BADADDR;
		return;
	}
	mp->ctl_addr.sa_family = FUNC9(mp->ctl_addr.sa_family);
	if (mp->ctl_addr.sa_family != AF_INET) {
		FUNC12(LOG_WARNING, "bad control address, family %d",
		    mp->ctl_addr.sa_family);
		rp->answer = BADCTLADDR;
		return;
	}
	for (s = mp->l_name; *s; s++)
		if (!FUNC7(*s)) {
			FUNC12(LOG_NOTICE, "illegal user name. Aborting");
			rp->answer = FAILED;
			return;
		}
	mp->pid = FUNC8(mp->pid);
	if (debug)
		FUNC10("process_request", mp);
	switch (mp->type) {

	case ANNOUNCE:
		FUNC1(mp, rp);
		break;

	case LEAVE_INVITE:
		ptr = FUNC3(mp);
		if (ptr != (CTL_MSG *)0) {
			rp->id_num = FUNC4(ptr->id_num);
			rp->answer = SUCCESS;
		} else
			FUNC6(mp, rp);
		break;

	case LOOK_UP:
		ptr = FUNC2(mp);
		if (ptr != (CTL_MSG *)0) {
			rp->id_num = FUNC4(ptr->id_num);
			rp->addr = ptr->addr;
			rp->addr.sa_family = FUNC5(ptr->addr.sa_family);
			rp->answer = SUCCESS;
		} else
			rp->answer = NOT_HERE;
		break;

	case DELETE:
		rp->answer = FUNC0(mp->id_num);
		break;

	default:
		rp->answer = UNKNOWN_REQUEST;
		break;
	}
	if (debug)
		FUNC11("process_request", rp);
}