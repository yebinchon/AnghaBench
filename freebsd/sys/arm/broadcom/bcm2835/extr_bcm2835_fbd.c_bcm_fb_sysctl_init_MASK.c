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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bcmsc_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct bcmsc_softc*,int,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  bcm_fb_resync_sysctl ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bcmsc_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree_node;
	struct sysctl_oid_list *tree;

	/*
	 * Add system sysctl tree/handlers.
	 */
	ctx = FUNC2(sc->dev);
	tree_node = FUNC3(sc->dev);
	tree = FUNC1(tree_node);
	FUNC0(ctx, tree, OID_AUTO, "resync",
	    CTLFLAG_RW | CTLTYPE_UINT, sc, sizeof(*sc),
	    bcm_fb_resync_sysctl, "IU", "Set to resync framebuffer with VC");
}