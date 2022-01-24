#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct mgmt_header_t {int /*<<< orphan*/  duration; } ;
struct meshcntl_t {int flags; int /*<<< orphan*/  addr6; int /*<<< orphan*/  addr5; int /*<<< orphan*/  addr4; int /*<<< orphan*/  seq; int /*<<< orphan*/  ttl; } ;
struct TYPE_8__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ CTRL_PS_POLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
#define  T_CTRL 130 
#define  T_DATA 129 
#define  T_MGMT 128 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC15(netdissect_options *ndo,
                      uint16_t fc, const u_char *p, u_int hdrlen,
                      u_int meshdrlen)
{
	if (ndo->ndo_vflag) {
		if (FUNC2(fc))
			FUNC10((ndo, "More Data "));
		if (FUNC3(fc))
			FUNC10((ndo, "More Fragments "));
		if (FUNC5(fc))
			FUNC10((ndo, "Pwr Mgmt "));
		if (FUNC7(fc))
			FUNC10((ndo, "Retry "));
		if (FUNC4(fc))
			FUNC10((ndo, "Strictly Ordered "));
		if (FUNC6(fc))
			FUNC10((ndo, "Protected "));
		if (FUNC9(fc) != T_CTRL || FUNC8(fc) != CTRL_PS_POLL)
			FUNC10((ndo, "%dus ",
			    FUNC0(
			        &((const struct mgmt_header_t *)p)->duration)));
	}
	if (meshdrlen != 0) {
		const struct meshcntl_t *mc =
		    (const struct meshcntl_t *)&p[hdrlen - meshdrlen];
		int ae = mc->flags & 3;

		FUNC10((ndo, "MeshData (AE %d TTL %u seq %u", ae, mc->ttl,
		    FUNC1(mc->seq)));
		if (ae > 0)
			FUNC10((ndo, " A4:%s", FUNC13(ndo, mc->addr4)));
		if (ae > 1)
			FUNC10((ndo, " A5:%s", FUNC13(ndo, mc->addr5)));
		if (ae > 2)
			FUNC10((ndo, " A6:%s", FUNC13(ndo, mc->addr6)));
		FUNC10((ndo, ") "));
	}

	switch (FUNC9(fc)) {
	case T_MGMT:
		FUNC14(ndo, p);
		break;
	case T_CTRL:
		FUNC11(ndo, fc, p);
		break;
	case T_DATA:
		FUNC12(ndo, fc, p);
		break;
	default:
		break;
	}
}