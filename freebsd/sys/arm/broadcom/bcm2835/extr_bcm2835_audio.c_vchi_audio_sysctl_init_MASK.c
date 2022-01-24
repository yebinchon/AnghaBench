#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  starved; int /*<<< orphan*/  available_space; int /*<<< orphan*/  underruns; int /*<<< orphan*/  retrieved_samples; int /*<<< orphan*/  submitted_samples; int /*<<< orphan*/  callbacks; } ;
struct bcm2835_audio_info {TYPE_1__ pch; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct bcm2835_audio_info*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC3 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_bcm2835_audio_dest ; 

__attribute__((used)) static void
FUNC6(struct bcm2835_audio_info *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree_node;
	struct sysctl_oid_list *tree;

	/*
	 * Add system sysctl tree/handlers.
	 */
	ctx = FUNC4(sc->dev);
	tree_node = FUNC5(sc->dev);
	tree = FUNC3(tree_node);
	FUNC1(ctx, tree, OID_AUTO, "dest",
	    CTLFLAG_RW | CTLTYPE_UINT, sc, sizeof(*sc),
	    sysctl_bcm2835_audio_dest, "IU", "audio destination, "
	    "0 - auto, 1 - headphones, 2 - HDMI");
	FUNC2(ctx, tree, OID_AUTO, "callbacks",
			CTLFLAG_RD, &sc->pch.callbacks,
			"callbacks total");
	FUNC2(ctx, tree, OID_AUTO, "submitted",
			CTLFLAG_RD, &sc->pch.submitted_samples,
			"last play submitted samples");
	FUNC2(ctx, tree, OID_AUTO, "retrieved",
			CTLFLAG_RD, &sc->pch.retrieved_samples,
			"last play retrieved samples");
	FUNC2(ctx, tree, OID_AUTO, "underruns",
			CTLFLAG_RD, &sc->pch.underruns,
			"callback underruns");
	FUNC0(ctx, tree, OID_AUTO, "freebuffer",
			CTLFLAG_RD, &sc->pch.available_space,
			sc->pch.available_space, "callbacks total");
	FUNC0(ctx, tree, OID_AUTO, "starved",
			CTLFLAG_RD, &sc->pch.starved,
			sc->pch.starved, "number of starved conditions");
}