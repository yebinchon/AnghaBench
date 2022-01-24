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
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
#define  PAP_AACK 130 
#define  PAP_ANAK 129 
#define  PAP_AREQ 128 
 int /*<<< orphan*/  papcode_values ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC6(netdissect_options *ndo,
           const u_char *p, int length)
{
	u_int code, len;
	int peerid_len, passwd_len, msg_len;
	const u_char *p0;
	int i;

	p0 = p;
	if (length < 1) {
		FUNC1((ndo, "[|pap]"));
		return;
	} else if (length < 4) {
		FUNC2(*p);
		FUNC1((ndo, "[|pap 0x%02x]", *p));
		return;
	}

	FUNC2(*p);
	code = *p;
	FUNC1((ndo, "PAP, %s (0x%02x)",
	          FUNC5(papcode_values, "unknown", code),
	          code));
	p++;

	FUNC2(*p);
	FUNC1((ndo, ", id %u", *p));		/* ID */
	p++;

	FUNC3(*p, 2);
	len = FUNC0(p);
	p += 2;

	if ((int)len > length) {
		FUNC1((ndo, ", length %u > packet size", len));
		return;
	}
	length = len;
	if (length < (p - p0)) {
		FUNC1((ndo, ", length %u < PAP header length", length));
		return;
	}

	switch (code) {
	case PAP_AREQ:
		/* A valid Authenticate-Request is 6 or more octets long. */
		if (len < 6)
			goto trunc;
		if (length - (p - p0) < 1)
			return;
		FUNC2(*p);
		peerid_len = *p;	/* Peer-ID Length */
		p++;
		if (length - (p - p0) < peerid_len)
			return;
		FUNC1((ndo, ", Peer "));
		for (i = 0; i < peerid_len; i++) {
			FUNC2(*p);
			FUNC4(ndo, *p++);
		}

		if (length - (p - p0) < 1)
			return;
		FUNC2(*p);
		passwd_len = *p;	/* Password Length */
		p++;
		if (length - (p - p0) < passwd_len)
			return;
		FUNC1((ndo, ", Name "));
		for (i = 0; i < passwd_len; i++) {
			FUNC2(*p);
			FUNC4(ndo, *p++);
		}
		break;
	case PAP_AACK:
	case PAP_ANAK:
		/* Although some implementations ignore truncation at
		 * this point and at least one generates a truncated
		 * packet, RFC 1334 section 2.2.2 clearly states that
		 * both AACK and ANAK are at least 5 bytes long.
		 */
		if (len < 5)
			goto trunc;
		if (length - (p - p0) < 1)
			return;
		FUNC2(*p);
		msg_len = *p;		/* Msg-Length */
		p++;
		if (length - (p - p0) < msg_len)
			return;
		FUNC1((ndo, ", Msg "));
		for (i = 0; i< msg_len; i++) {
			FUNC2(*p);
			FUNC4(ndo, *p++);
		}
		break;
	}
	return;

trunc:
	FUNC1((ndo, "[|pap]"));
}