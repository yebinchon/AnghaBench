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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ u_int ;
struct forces_tlv {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
typedef  struct forces_tlv u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct forces_tlv const*) ; 
 int /*<<< orphan*/  ForCES_TLV_err ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct forces_tlv const) ; 
 scalar_t__ FUNC4 (struct forces_tlv const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct forces_tlv const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct forces_tlv const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int
FUNC9(netdissect_options *ndo,
               register const u_char * pptr, register u_int len,
               uint16_t op_msk, int indent)
{
	const struct forces_tlv *tlv = (const struct forces_tlv *)pptr;
	register const u_char *tdp = (const u_char *) FUNC4(tlv);
	register const u_char *dp = tdp + 4;
	const struct forces_tlv *kdtlv = (const struct forces_tlv *)dp;
	uint32_t id;
	char *ib = FUNC6(indent, 0);
	uint16_t type, tll;
	u_int invtlv;

	FUNC3(*tdp);
	id = FUNC1(tdp);
	FUNC2((ndo, "%sKeyinfo: Key 0x%x\n", ib, id));
	FUNC3(*kdtlv);
	type = FUNC0(&kdtlv->type);
	invtlv = FUNC7(kdtlv, len);

	if (invtlv) {
		FUNC2((ndo, "%s TLV type 0x%x len %d\n",
		       FUNC8(ForCES_TLV_err, NULL, invtlv), type,
		       FUNC0(&kdtlv->length)));
		return -1;
	}
	/*
	 * At this point, tlv_valid() has ensured that the TLV
	 * length is large enough but not too large (it doesn't
	 * go past the end of the containing TLV).
	 */
	tll = FUNC0(&kdtlv->length);
	dp = (const u_char *) FUNC4(kdtlv);
	return FUNC5(ndo, dp, tll, op_msk, indent);

trunc:
	FUNC2((ndo, "%s", tstr));
	return -1;
}