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
struct fst_session {int dummy; } ;
struct fst_iface {int dummy; } ;
struct fst_group {int dummy; } ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct fst_group*) ; 
 struct fst_iface* FUNC1 (struct fst_group*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_session*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 struct fst_group* FUNC3 (struct fst_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct fst_session*,struct fst_iface*,int /*<<< orphan*/ ) ; 

int FUNC5(struct fst_session *s, const char *ifname,
			       Boolean is_old)
{
	struct fst_group *g = FUNC3(s);
	struct fst_iface *i;

	i = FUNC1(g, ifname);
	if (!i) {
		FUNC2(s, MSG_WARNING,
				   "Cannot set iface %s: no such iface within group '%s'",
				   ifname, FUNC0(g));
		return -1;
	}

	FUNC4(s, i, is_old);

	return 0;
}