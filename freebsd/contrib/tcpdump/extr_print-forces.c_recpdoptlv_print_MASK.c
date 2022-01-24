#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct forces_tlv {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ForCES_TLV ; 
 struct forces_tlv* FUNC1 (struct forces_tlv const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct forces_tlv const) ; 
 scalar_t__ FUNC4 (struct forces_tlv const*) ; 
 scalar_t__ TLV_HDRL ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int,scalar_t__,int) ; 
 scalar_t__ FUNC7 (struct forces_tlv const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int
FUNC9(netdissect_options *ndo,
                 register const u_char * pptr, register u_int len,
                 uint16_t op_msk, int indent)
{
	const struct forces_tlv *pdtlv = (const struct forces_tlv *)pptr;
	int tll;
	u_int invtlv;
	uint16_t type;
	register const u_char *dp;
	char *ib;

	while (len != 0) {
		FUNC3(*pdtlv);
		invtlv = FUNC7(pdtlv, len);
		if (invtlv) {
			break;
		}

		/*
		 * At this point, tlv_valid() has ensured that the TLV
		 * length is large enough but not too large (it doesn't
		 * go past the end of the containing TLV).
		 */
		ib = FUNC5(indent, 0);
		type = FUNC0(&pdtlv->type);
		dp = (const u_char *) FUNC4(pdtlv);
		tll = FUNC0(&pdtlv->length) - TLV_HDRL;

		if (ndo->ndo_vflag >= 3)
			FUNC2((ndo, "%s%s, length %d (data encapsulated %d Bytes)",
			          ib, FUNC8(ForCES_TLV, NULL, type),
			          FUNC0(&pdtlv->length),
			          FUNC0(&pdtlv->length) - TLV_HDRL));

		if (FUNC6(ndo, dp, tll, op_msk, indent + 1) == -1)
			return -1;
		pdtlv = FUNC1(pdtlv, len);
	}

	if (len) {
		FUNC2((ndo,
		          "\n\t\tMessy PATHDATA TLV header, type (0x%x)\n\t\texcess of %d Bytes ",
		          FUNC0(&pdtlv->type), len - FUNC0(&pdtlv->length)));
		return -1;
	}

	return 0;

trunc:
	FUNC2((ndo, "%s", tstr));
	return -1;
}