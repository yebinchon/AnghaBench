#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mparse {int options; char const* os_s; TYPE_3__* man; int /*<<< orphan*/  roff; } ;
typedef  enum mandoc_os { ____Placeholder_mandoc_os } mandoc_os ;
struct TYPE_5__ {int os_e; TYPE_1__* first; int /*<<< orphan*/  macroset; } ;
struct TYPE_6__ {TYPE_2__ meta; int /*<<< orphan*/ * manmac; int /*<<< orphan*/ * mdocmac; } ;
struct TYPE_4__ {int /*<<< orphan*/  tok; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACROSET_MAN ; 
 int /*<<< orphan*/  MACROSET_MDOC ; 
 int /*<<< orphan*/  MAN_MAX ; 
 int /*<<< orphan*/  MAN_TH ; 
 int /*<<< orphan*/  MDOC_Dd ; 
 int /*<<< orphan*/  MDOC_MAX ; 
 int MPARSE_MAN ; 
 int MPARSE_MDOC ; 
 int MPARSE_QUICK ; 
 int /*<<< orphan*/  TOKEN_NONE ; 
 struct mparse* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct mparse *
FUNC4(int options, enum mandoc_os os_e, const char *os_s)
{
	struct mparse	*curp;

	curp = FUNC0(1, sizeof(struct mparse));

	curp->options = options;
	curp->os_s = os_s;

	curp->roff = FUNC1(options);
	curp->man = FUNC2(curp->roff, curp->os_s,
		curp->options & MPARSE_QUICK ? 1 : 0);
	if (curp->options & MPARSE_MDOC) {
		curp->man->meta.macroset = MACROSET_MDOC;
		if (curp->man->mdocmac == NULL)
			curp->man->mdocmac = FUNC3(MDOC_Dd, MDOC_MAX);
	} else if (curp->options & MPARSE_MAN) {
		curp->man->meta.macroset = MACROSET_MAN;
		if (curp->man->manmac == NULL)
			curp->man->manmac = FUNC3(MAN_TH, MAN_MAX);
	}
	curp->man->meta.first->tok = TOKEN_NONE;
	curp->man->meta.os_e = os_e;
	return curp;
}