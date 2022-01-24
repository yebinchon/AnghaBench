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
typedef  void* uint16_t ;
typedef  void* u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct forces_tlv {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ForCES_TLV ; 
 int /*<<< orphan*/  ForCES_TLV_err ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct forces_tlv const) ; 
 scalar_t__ FUNC3 (struct forces_tlv const*) ; 
 void* TLV_HDRL ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int,void*,int) ; 
 void* FUNC6 (struct forces_tlv const*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  tstr ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static int
FUNC9(netdissect_options *ndo,
               register const u_char * pptr, register u_int len,
               uint16_t op_msk, int indent)
{
	const struct forces_tlv *pdtlv = (const struct forces_tlv *)pptr;
	uint16_t type;
	int tll;
	u_int invtlv;
	char *ib = FUNC4(indent, 0);

	FUNC2(*pdtlv);
	type = FUNC0(&pdtlv->type);
	tll = FUNC0(&pdtlv->length) - TLV_HDRL;
	invtlv = FUNC6(pdtlv, len);
	FUNC1((ndo, "genoptlvprint - %s TLV type 0x%x len %d\n",
	       FUNC7(ForCES_TLV, NULL, type), type, FUNC0(&pdtlv->length)));
	if (!invtlv) {
		/*
		 * At this point, tlv_valid() has ensured that the TLV
		 * length is large enough but not too large (it doesn't
		 * go past the end of the containing TLV).
		 */
		register const u_char *dp = (const u_char *) FUNC3(pdtlv);
		if (!FUNC8(type)) {
			FUNC1((ndo, "%s TLV type 0x%x len %d\n",
			       FUNC7(ForCES_TLV_err, NULL, invtlv), type,
			       FUNC0(&pdtlv->length)));
			return -1;
		}
		if (ndo->ndo_vflag >= 3)
			FUNC1((ndo, "%s%s, length %d (data length %d Bytes)",
			       ib, FUNC7(ForCES_TLV, NULL, type),
			       FUNC0(&pdtlv->length), tll));

		return FUNC5(ndo, dp, tll, op_msk, indent + 1);
	} else {
		FUNC1((ndo, "\t\t\tInvalid ForCES TLV type=%x", type));
		return -1;
	}

trunc:
	FUNC1((ndo, "%s", tstr));
	return -1;
}