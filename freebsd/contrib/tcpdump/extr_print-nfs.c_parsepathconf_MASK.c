#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct nfsv3_pathconf {int /*<<< orphan*/  pc_casepreserving; int /*<<< orphan*/  pc_caseinsensitive; int /*<<< orphan*/  pc_chownrestricted; int /*<<< orphan*/  pc_notrunc; int /*<<< orphan*/  pc_namemax; int /*<<< orphan*/  pc_linkmax; } ;
struct TYPE_6__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsv3_pathconf const) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int*) ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo,
              const uint32_t *dp)
{
	int er;
	const struct nfsv3_pathconf *spp;

	if (!(dp = FUNC4(ndo, dp, &er)))
		return (0);
	if (ndo->ndo_vflag)
		FUNC1((ndo, " POST:"));
	if (!(dp = FUNC3(ndo, dp, ndo->ndo_vflag)))
		return (0);
	if (er)
		return (1);

	spp = (const struct nfsv3_pathconf *)dp;
	FUNC2(*spp);

	FUNC1((ndo, " linkmax %u namemax %u %s %s %s %s",
	       FUNC0(&spp->pc_linkmax),
	       FUNC0(&spp->pc_namemax),
	       FUNC0(&spp->pc_notrunc) ? "notrunc" : "",
	       FUNC0(&spp->pc_chownrestricted) ? "chownres" : "",
	       FUNC0(&spp->pc_caseinsensitive) ? "igncase" : "",
	       FUNC0(&spp->pc_casepreserving) ? "keepcase" : ""));
	return (1);
trunc:
	return (0);
}