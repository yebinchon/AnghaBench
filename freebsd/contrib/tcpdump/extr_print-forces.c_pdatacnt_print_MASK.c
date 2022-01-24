#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct pdata_ops {scalar_t__ v; int (* print ) (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,int) ;int /*<<< orphan*/  op_msk; int /*<<< orphan*/  s; } ;
struct forces_tlv {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ B_APPND ; 
 scalar_t__ B_KEYIN ; 
 scalar_t__ B_TRNG ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ F_TLV_PDAT ; 
 int /*<<< orphan*/  ForCES_TLV_err ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct forces_tlv const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int) ; 
 scalar_t__ PTH_DESC_SIZE ; 
 scalar_t__ TLV_HDRL ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct pdata_ops* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC12 (struct forces_tlv const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int
FUNC14(netdissect_options *ndo,
               register const u_char * pptr, register u_int len,
               uint16_t IDcnt, uint16_t op_msk, int indent)
{
	u_int i;
	uint32_t id;
	char *ib = FUNC9(indent, 0);

	if ((op_msk & B_APPND) && ndo->ndo_vflag >= 3) {
		FUNC3((ndo, "%sTABLE APPEND\n", ib));
	}
	for (i = 0; i < IDcnt; i++) {
		FUNC5(*pptr, 4);
		if (len < 4)
			goto trunc;
		id = FUNC1(pptr);
		if (ndo->ndo_vflag >= 3)
			FUNC3((ndo, "%sID#%02u: %d\n", ib, i + 1, id));
		len -= 4;
		pptr += 4;
	}

	if ((op_msk & B_TRNG) || (op_msk & B_KEYIN)) {
		if (op_msk & B_TRNG) {
			uint32_t starti, endi;

			if (len < PTH_DESC_SIZE) {
				FUNC3((ndo, "pathlength %d with key/range too short %d\n",
				       len, PTH_DESC_SIZE));
				return -1;
			}

			pptr += sizeof(struct forces_tlv);
			len -= sizeof(struct forces_tlv);

			starti = FUNC1(pptr);
			pptr += 4;
			len -= 4;

			endi = FUNC1(pptr);
			pptr += 4;
			len -= 4;

			if (ndo->ndo_vflag >= 3)
				FUNC3((ndo, "%sTable range: [%d,%d]\n", ib, starti, endi));
		}

		if (op_msk & B_KEYIN) {
			const struct forces_tlv *keytlv;
			uint16_t tll;

			if (len < PTH_DESC_SIZE) {
				FUNC3((ndo, "pathlength %d with key/range too short %d\n",
				       len, PTH_DESC_SIZE));
				return -1;
			}

			/* skip keyid */
			pptr += 4;
			len -= 4;
			keytlv = (const struct forces_tlv *)pptr;
			/* skip header */
			pptr += sizeof(struct forces_tlv);
			len -= sizeof(struct forces_tlv);
			/* skip key content */
			tll = FUNC0(&keytlv->length);
			if (tll < TLV_HDRL) {
				FUNC3((ndo, "key content length %u < %u\n",
					tll, TLV_HDRL));
				return -1;
			}
			tll -= TLV_HDRL;
			if (len < tll) {
				FUNC3((ndo, "key content too short\n"));
				return -1;
			}
			pptr += tll;
			len -= tll;
		}

	}

	if (len) {
		const struct forces_tlv *pdtlv = (const struct forces_tlv *)pptr;
		uint16_t type;
		uint16_t tll;
		int pad = 0;
		u_int aln;
		u_int invtlv;

		FUNC4(*pdtlv);
		type = FUNC0(&pdtlv->type);
		invtlv = FUNC12(pdtlv, len);
		if (invtlv) {
			FUNC3((ndo, "%s Outstanding bytes %d for TLV type 0x%x TLV len %d\n",
			          FUNC13(ForCES_TLV_err, NULL, invtlv), len, type,
			          FUNC0(&pdtlv->length)));
			goto pd_err;
		}
		/*
		 * At this point, tlv_valid() has ensured that the TLV
		 * length is large enough but not too large (it doesn't
		 * go past the end of the containing TLV).
		 */
		tll = FUNC0(&pdtlv->length) - TLV_HDRL;
		aln = FUNC2(FUNC0(&pdtlv->length));
		if (aln > FUNC0(&pdtlv->length)) {
			if (aln > len) {
				FUNC3((ndo,
				          "Invalid padded pathdata TLV type 0x%x len %d missing %d pad bytes\n",
				          type, FUNC0(&pdtlv->length), aln - len));
			} else {
				pad = aln - FUNC0(&pdtlv->length);
			}
		}
		if (FUNC10(type)) {
			const struct pdata_ops *ops = FUNC7(type);

			if (ndo->ndo_vflag >= 3 && ops->v != F_TLV_PDAT) {
				if (pad)
					FUNC3((ndo, "%s  %s (Length %d DataLen %d pad %d Bytes)\n",
					          ib, ops->s, FUNC0(&pdtlv->length), tll, pad));
				else
					FUNC3((ndo, "%s  %s (Length %d DataLen %d Bytes)\n",
					          ib, ops->s, FUNC0(&pdtlv->length), tll));
			}

			FUNC6(ndo, type, op_msk, ops->op_msk);

			if (ops->print(ndo, (const u_char *)pdtlv,
					tll + pad + TLV_HDRL, op_msk,
					indent + 2) == -1)
				return -1;
			len -= (TLV_HDRL + pad + tll);
		} else {
			FUNC3((ndo, "Invalid path data content type 0x%x len %d\n",
			       type, FUNC0(&pdtlv->length)));
pd_err:
			if (FUNC0(&pdtlv->length)) {
                                FUNC8(ndo, "Bad Data val\n\t  [",
						      pptr, len, 0);
				FUNC3((ndo, "]\n"));

				return -1;
			}
		}
	}
	return len;

trunc:
	FUNC3((ndo, "%s", tstr));
	return -1;
}