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
struct fst_iface {int dummy; } ;
struct fst_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fst_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_group*,struct fst_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct fst_group*) ; 
 int /*<<< orphan*/  FUNC4 (struct fst_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct fst_iface*) ; 
 struct fst_group* FUNC6 (struct fst_iface*) ; 
 int /*<<< orphan*/  FUNC7 (struct fst_iface*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fst_iface*) ; 
 int /*<<< orphan*/  on_iface_removed ; 

void FUNC9(struct fst_iface *iface)
{
	struct fst_group *group = FUNC6(iface);

	FUNC7(iface, MSG_DEBUG, "iface detached from group %s",
			 FUNC3(group));
	FUNC8(iface);
	FUNC0(on_iface_removed, iface);
	FUNC2(group, iface);
	FUNC5(iface);
	FUNC4(group);
	FUNC1(group);
}