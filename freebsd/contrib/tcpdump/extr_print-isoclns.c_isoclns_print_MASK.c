#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int u_int ;
struct TYPE_12__ {scalar_t__ ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
#define  NLPID_CLNP 135 
#define  NLPID_ESIS 134 
#define  NLPID_IP 133 
#define  NLPID_IP6 132 
#define  NLPID_ISIS 131 
#define  NLPID_NULLNS 130 
#define  NLPID_PPP 129 
#define  NLPID_Q933 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  nlpid_values ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int const) ; 

void
FUNC11(netdissect_options *ndo, const uint8_t *p, u_int length)
{
	if (!FUNC1(*p)) { /* enough bytes on the wire ? */
		FUNC0((ndo, "|OSI"));
		return;
	}

	if (ndo->ndo_eflag)
		FUNC0((ndo, "OSI NLPID %s (0x%02x): ", FUNC10(nlpid_values, "Unknown", *p), *p));

	switch (*p) {

	case NLPID_CLNP:
		if (!FUNC2(ndo, p, length))
			FUNC8(ndo, p, "\n\t", length);
		break;

	case NLPID_ESIS:
		FUNC3(ndo, p, length);
		return;

	case NLPID_ISIS:
		if (!FUNC6(ndo, p, length))
			FUNC8(ndo, p, "\n\t", length);
		break;

	case NLPID_NULLNS:
		FUNC0((ndo, "%slength: %u", ndo->ndo_eflag ? "" : ", ", length));
		break;

	case NLPID_Q933:
		FUNC9(ndo, p + 1, length - 1);
		break;

	case NLPID_IP:
		FUNC5(ndo, p + 1, length - 1);
		break;

	case NLPID_IP6:
		FUNC4(ndo, p + 1, length - 1);
		break;

	case NLPID_PPP:
		FUNC7(ndo, p + 1, length - 1);
		break;

	default:
		if (!ndo->ndo_eflag)
			FUNC0((ndo, "OSI NLPID 0x%02x unknown", *p));
		FUNC0((ndo, "%slength: %u", ndo->ndo_eflag ? "" : ", ", length));
		if (length > 1)
			FUNC8(ndo, p, "\n\t", length);
		break;
	}
}