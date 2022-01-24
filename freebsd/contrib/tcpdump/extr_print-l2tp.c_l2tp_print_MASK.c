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
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FALSE ; 
 int L2TP_FLAG_LENGTH ; 
 int L2TP_FLAG_OFFSET ; 
 int L2TP_FLAG_PRIORITY ; 
 int L2TP_FLAG_SEQUENCE ; 
 int L2TP_FLAG_TYPE ; 
 int L2TP_VERSION_L2F ; 
 int L2TP_VERSION_L2TP ; 
 int L2TP_VERSION_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC5(netdissect_options *ndo, const u_char *dat, u_int length)
{
	const u_char *ptr = dat;
	u_int cnt = 0;			/* total octets consumed */
	uint16_t pad;
	int flag_t, flag_l, flag_s, flag_o;
	uint16_t l2tp_len;

	flag_t = flag_l = flag_s = flag_o = FALSE;

	FUNC2(*ptr, 2);	/* Flags & Version */
	if ((FUNC0(ptr) & L2TP_VERSION_MASK) == L2TP_VERSION_L2TP) {
		FUNC1((ndo, " l2tp:"));
	} else if ((FUNC0(ptr) & L2TP_VERSION_MASK) == L2TP_VERSION_L2F) {
		FUNC1((ndo, " l2f:"));
		return;		/* nothing to do */
	} else {
		FUNC1((ndo, " Unknown Version, neither L2F(1) nor L2TP(2)"));
		return;		/* nothing we can do */
	}

	FUNC1((ndo, "["));
	if (FUNC0(ptr) & L2TP_FLAG_TYPE) {
		flag_t = TRUE;
		FUNC1((ndo, "T"));
	}
	if (FUNC0(ptr) & L2TP_FLAG_LENGTH) {
		flag_l = TRUE;
		FUNC1((ndo, "L"));
	}
	if (FUNC0(ptr) & L2TP_FLAG_SEQUENCE) {
		flag_s = TRUE;
		FUNC1((ndo, "S"));
	}
	if (FUNC0(ptr) & L2TP_FLAG_OFFSET) {
		flag_o = TRUE;
		FUNC1((ndo, "O"));
	}
	if (FUNC0(ptr) & L2TP_FLAG_PRIORITY)
		FUNC1((ndo, "P"));
	FUNC1((ndo, "]"));

	ptr += 2;
	cnt += 2;

	if (flag_l) {
		FUNC2(*ptr, 2);	/* Length */
		l2tp_len = FUNC0(ptr);
		ptr += 2;
		cnt += 2;
	} else {
		l2tp_len = 0;
	}

	FUNC2(*ptr, 2);		/* Tunnel ID */
	FUNC1((ndo, "(%u/", FUNC0(ptr)));
	ptr += 2;
	cnt += 2;
	FUNC2(*ptr, 2);		/* Session ID */
	FUNC1((ndo, "%u)",  FUNC0(ptr)));
	ptr += 2;
	cnt += 2;

	if (flag_s) {
		FUNC2(*ptr, 2);	/* Ns */
		FUNC1((ndo, "Ns=%u,", FUNC0(ptr)));
		ptr += 2;
		cnt += 2;
		FUNC2(*ptr, 2);	/* Nr */
		FUNC1((ndo, "Nr=%u",  FUNC0(ptr)));
		ptr += 2;
		cnt += 2;
	}

	if (flag_o) {
		FUNC2(*ptr, 2);	/* Offset Size */
		pad =  FUNC0(ptr);
		ptr += (2 + pad);
		cnt += (2 + pad);
	}

	if (flag_l) {
		if (length < l2tp_len) {
			FUNC1((ndo, " Length %u larger than packet", l2tp_len));
			return;
		}
		length = l2tp_len;
	}
	if (length < cnt) {
		FUNC1((ndo, " Length %u smaller than header length", length));
		return;
	}
	if (flag_t) {
		if (!flag_l) {
			FUNC1((ndo, " No length"));
			return;
		}
		if (length - cnt == 0) {
			FUNC1((ndo, " ZLB"));
		} else {
			FUNC3(ndo, ptr, length - cnt);
		}
	} else {
		FUNC1((ndo, " {"));
		FUNC4(ndo, ptr, length - cnt);
		FUNC1((ndo, "}"));
	}

	return;

 trunc:
	FUNC1((ndo, "%s", tstr));
}