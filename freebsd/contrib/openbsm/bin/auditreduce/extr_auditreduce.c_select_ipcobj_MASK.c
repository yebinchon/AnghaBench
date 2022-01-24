#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_char ;

/* Variables and functions */
 scalar_t__ AT_IPC_MSG ; 
 scalar_t__ AT_IPC_SEM ; 
 scalar_t__ AT_IPC_SHM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_om ; 
 int /*<<< orphan*/  OPT_ose ; 
 int /*<<< orphan*/  OPT_osh ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opttochk ; 
 int /*<<< orphan*/  p_msgqobj ; 
 int /*<<< orphan*/  p_semobj ; 
 int /*<<< orphan*/  p_shmobj ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char**,int) ; 

__attribute__((used)) static int
FUNC3(u_char type, uint32_t id, uint32_t *optchkd)
{

	if (type == AT_IPC_MSG) {
		FUNC1((*optchkd), OPT_om);
		if (FUNC0(opttochk, OPT_om)) {
			if (id != (uint32_t)FUNC2(p_msgqobj, (char **)NULL,
			    10))
				return (0);
		}
		return (1);
	} else if (type == AT_IPC_SEM) {
		FUNC1((*optchkd), OPT_ose);
		if (FUNC0(opttochk, OPT_ose)) {
			if (id != (uint32_t)FUNC2(p_semobj, (char **)NULL, 10))
				return (0);
		}
		return (1);
	} else if (type == AT_IPC_SHM) {
		FUNC1((*optchkd), OPT_osh);
		if (FUNC0(opttochk, OPT_osh)) {
			if (id != (uint32_t)FUNC2(p_shmobj, (char **)NULL, 10))
				return (0);
		}
		return (1);
	}

	/* Unknown type -- filter if *any* ipc filtering is required. */
	if (FUNC0(opttochk, OPT_om) || FUNC0(opttochk, OPT_ose)
	    || FUNC0(opttochk, OPT_osh))
		return (0);

	return (1);
}