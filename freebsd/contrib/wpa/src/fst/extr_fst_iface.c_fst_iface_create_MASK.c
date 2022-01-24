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
typedef  int /*<<< orphan*/  u8 ;
struct fst_wpa_obj {int dummy; } ;
struct fst_iface_cfg {scalar_t__ llt; } ;
struct fst_iface {struct fst_iface_cfg cfg; int /*<<< orphan*/  own_addr; int /*<<< orphan*/  ifname; struct fst_group* group; struct fst_wpa_obj iface_obj; } ;
struct fst_group {int dummy; } ;

/* Variables and functions */
 scalar_t__ FST_DEFAULT_LLT_CFG_VALUE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct fst_group*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_iface*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 struct fst_iface* FUNC4 (int) ; 

struct fst_iface * FUNC5(struct fst_group *g, const char *ifname,
				    const u8 *own_addr,
				    const struct fst_wpa_obj *iface_obj,
				    const struct fst_iface_cfg *cfg)
{
	struct fst_iface *i;

	i = FUNC4(sizeof(*i));
	if (!i) {
		FUNC0(g, MSG_ERROR, "cannot allocate iface for %s",
				ifname);
		return NULL;
	}

	i->cfg = *cfg;
	i->iface_obj = *iface_obj;
	i->group = g;
	FUNC3(i->ifname, ifname, sizeof(i->ifname));
	FUNC2(i->own_addr, own_addr, sizeof(i->own_addr));

	if (!i->cfg.llt) {
		FUNC1(i, MSG_WARNING, "Zero llt adjusted");
		i->cfg.llt = FST_DEFAULT_LLT_CFG_VALUE;
	}

	return i;
}