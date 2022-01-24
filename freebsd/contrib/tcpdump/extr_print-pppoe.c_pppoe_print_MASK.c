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
typedef  int u_short ;
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int MAXTAGPRINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int PPPOE_HDRLEN ; 
 int PPPOE_PADI ; 
 int FUNC3 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  pppoecode2str ; 
 int /*<<< orphan*/  pppoetag2str ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

u_int
FUNC5(netdissect_options *ndo, register const u_char *bp, u_int length)
{
	uint16_t pppoe_ver, pppoe_type, pppoe_code, pppoe_sessionid;
	u_int pppoe_length;
	const u_char *pppoe_packet, *pppoe_payload;

	if (length < PPPOE_HDRLEN) {
		FUNC1((ndo, "truncated-pppoe %u", length));
		return (length);
	}
	length -= PPPOE_HDRLEN;
	pppoe_packet = bp;
	FUNC2(*pppoe_packet, PPPOE_HDRLEN);
	pppoe_ver  = (pppoe_packet[0] & 0xF0) >> 4;
	pppoe_type  = (pppoe_packet[0] & 0x0F);
	pppoe_code = pppoe_packet[1];
	pppoe_sessionid = FUNC0(pppoe_packet + 2);
	pppoe_length    = FUNC0(pppoe_packet + 4);
	pppoe_payload = pppoe_packet + PPPOE_HDRLEN;

	if (pppoe_ver != 1) {
		FUNC1((ndo, " [ver %d]",pppoe_ver));
	}
	if (pppoe_type != 1) {
		FUNC1((ndo, " [type %d]",pppoe_type));
	}

	FUNC1((ndo, "PPPoE %s", FUNC4(pppoecode2str, "PAD-%x", pppoe_code)));
	if (pppoe_code == PPPOE_PADI && pppoe_length > 1484 - PPPOE_HDRLEN) {
		FUNC1((ndo, " [len %u!]",pppoe_length));
	}
	if (pppoe_length > length) {
		FUNC1((ndo, " [len %u > %u!]", pppoe_length, length));
		pppoe_length = length;
	}
	if (pppoe_sessionid) {
		FUNC1((ndo, " [ses 0x%x]", pppoe_sessionid));
	}

	if (pppoe_code) {
		/* PPP session packets don't contain tags */
		u_short tag_type = 0xffff, tag_len;
		const u_char *p = pppoe_payload;

		/*
		 * loop invariant:
		 * p points to current tag,
		 * tag_type is previous tag or 0xffff for first iteration
		 */
		while (tag_type && p < pppoe_payload + pppoe_length) {
			FUNC2(*p, 4);
			tag_type = FUNC0(p);
			tag_len = FUNC0(p + 2);
			p += 4;
			/* p points to tag_value */

			if (tag_len) {
				unsigned ascii_count = 0, garbage_count = 0;
				const u_char *v;
				char tag_str[MAXTAGPRINT];
				unsigned tag_str_len = 0;

				/* TODO print UTF-8 decoded text */
				FUNC2(*p, tag_len);
				for (v = p; v < p + tag_len && tag_str_len < MAXTAGPRINT-1; v++)
					if (*v >= 32 && *v < 127) {
						tag_str[tag_str_len++] = *v;
						ascii_count++;
					} else {
						tag_str[tag_str_len++] = '.';
						garbage_count++;
					}
				tag_str[tag_str_len] = 0;

				if (ascii_count > garbage_count) {
					FUNC1((ndo, " [%s \"%*.*s\"]",
					       FUNC4(pppoetag2str, "TAG-0x%x", tag_type),
					       (int)tag_str_len,
					       (int)tag_str_len,
					       tag_str));
				} else {
					/* Print hex, not fast to abuse printf but this doesn't get used much */
					FUNC1((ndo, " [%s 0x", FUNC4(pppoetag2str, "TAG-0x%x", tag_type)));
					for (v=p; v<p+tag_len; v++) {
						FUNC1((ndo, "%02X", *v));
					}
					FUNC1((ndo, "]"));
				}


			} else
				FUNC1((ndo, " [%s]", FUNC4(pppoetag2str,
				    "TAG-0x%x", tag_type)));

			p += tag_len;
			/* p points to next tag */
		}
		return (0);
	} else {
		/* PPPoE data */
		FUNC1((ndo, " "));
		return (PPPOE_HDRLEN + FUNC3(ndo, pppoe_payload, pppoe_length));
	}

trunc:
	FUNC1((ndo, "[|pppoe]"));
	return (PPPOE_HDRLEN);
}