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
struct TYPE_2__ {int /*<<< orphan*/  resets; } ;
struct cpsw_softc {TYPE_1__ watchdog; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 

__attribute__((used)) static void
FUNC2(struct sysctl_ctx_list *ctx, struct sysctl_oid *node,
	struct cpsw_softc *sc)
{
	struct sysctl_oid_list *parent;

	parent = FUNC1(node);
	FUNC0(ctx, parent, OID_AUTO, "resets",
	    CTLFLAG_RD, &sc->watchdog.resets, 0,
	    "Total number of watchdog resets");
}