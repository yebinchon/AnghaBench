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
typedef  int /*<<< orphan*/  us ;
typedef  int /*<<< orphan*/  ul ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int u_int ;
typedef  scalar_t__ u_char ;
struct TYPE_7__ {int ndo_vflag; int /*<<< orphan*/  ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
#define  AGENT_SUBOPTION_CIRCUIT_ID 138 
#define  AGENT_SUBOPTION_REMOTE_ID 137 
#define  AGENT_SUBOPTION_SUBSCRIBER_ID 136 
 scalar_t__ FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const,int) ; 
 scalar_t__ FUNC4 (scalar_t__ const,int) ; 
#define  TAG_AGENT_CIRCUIT 135 
#define  TAG_CLASSLESS_STATIC_RT 134 
#define  TAG_CLASSLESS_STA_RT_MS 133 
#define  TAG_CLIENT_FQDN 132 
#define  TAG_CLIENT_ID 131 
 scalar_t__ TAG_DHCP_MESSAGE ; 
 scalar_t__ TAG_END ; 
 scalar_t__ TAG_EXTENDED_OPTION ; 
 scalar_t__ TAG_EXTENDED_REQUEST ; 
#define  TAG_NETBIOS_NODE 130 
#define  TAG_OPT_OVERLOAD 129 
 scalar_t__ TAG_PAD ; 
 scalar_t__ TAG_PARM_REQUEST ; 
#define  TAG_USER_CLASS 128 
 int /*<<< orphan*/  agent_suboption_values ; 
 int /*<<< orphan*/  arp2str ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__ const) ; 
 int /*<<< orphan*/  dhcp_msg_values ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__ const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int /*<<< orphan*/  nbo2str ; 
 int /*<<< orphan*/  oo2str ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__ const*,char*,int) ; 
 int /*<<< orphan*/  tag2str ; 
 char* FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  xtag2str ; 

__attribute__((used)) static void
FUNC12(netdissect_options *ndo,
	      register const u_char *bp)
{
	register uint16_t tag;
	register u_int len;
	register const char *cp;
	register char c;
	int first, idx;
	uint32_t ul;
	uint16_t us;
	uint8_t uc, subopt, suboptlen;

	FUNC2((ndo, "\n\t  Vendor-rfc1048 Extensions"));

	/* Step over magic cookie */
	FUNC2((ndo, "\n\t    Magic Cookie 0x%08x", FUNC1(bp)));
	bp += sizeof(int32_t);

	/* Loop while we there is a tag left in the buffer */
	while (FUNC4(*bp, 1)) {
		tag = *bp++;
		if (tag == TAG_PAD && ndo->ndo_vflag < 3)
			continue;
		if (tag == TAG_END && ndo->ndo_vflag < 3)
			return;
		if (tag == TAG_EXTENDED_OPTION) {
			FUNC3(*(bp + 1), 2);
			tag = FUNC0(bp + 1);
			/* XXX we don't know yet if the IANA will
			 * preclude overlap of 1-byte and 2-byte spaces.
			 * If not, we need to offset tag after this step.
			 */
			cp = FUNC11(xtag2str, "?xT%u", tag);
		} else
			cp = FUNC11(tag2str, "?T%u", tag);
		c = *cp++;

		if (tag == TAG_PAD || tag == TAG_END)
			len = 0;
		else {
			/* Get the length; check for truncation */
			FUNC3(*bp, 1);
			len = *bp++;
		}

		FUNC2((ndo, "\n\t    %s Option %u, length %u%s", cp, tag, len,
			  len > 0 ? ": " : ""));

		if (tag == TAG_PAD && ndo->ndo_vflag > 2) {
			u_int ntag = 1;
			while (FUNC4(*bp, 1) && *bp == TAG_PAD) {
				bp++;
				ntag++;
			}
			if (ntag > 1)
				FUNC2((ndo, ", occurs %u", ntag));
		}

		if (!FUNC4(*bp, len)) {
			FUNC2((ndo, "[|rfc1048 %u]", len));
			return;
		}

		if (tag == TAG_DHCP_MESSAGE && len == 1) {
			uc = *bp++;
			FUNC2((ndo, "%s", FUNC11(dhcp_msg_values, "Unknown (%u)", uc)));
			continue;
		}

		if (tag == TAG_PARM_REQUEST) {
			idx = 0;
			while (len-- > 0) {
				uc = *bp++;
				cp = FUNC11(tag2str, "?Option %u", uc);
				if (idx % 4 == 0)
					FUNC2((ndo, "\n\t      "));
				else
					FUNC2((ndo, ", "));
				FUNC2((ndo, "%s", cp + 1));
				idx++;
			}
			continue;
		}

		if (tag == TAG_EXTENDED_REQUEST) {
			first = 1;
			while (len > 1) {
				len -= 2;
				us = FUNC0(bp);
				bp += 2;
				cp = FUNC11(xtag2str, "?xT%u", us);
				if (!first)
					FUNC2((ndo, "+"));
				FUNC2((ndo, "%s", cp + 1));
				first = 0;
			}
			continue;
		}

		/* Print data */
		if (c == '?') {
			/* Base default formats for unknown tags on data size */
			if (len & 1)
				c = 'b';
			else if (len & 2)
				c = 's';
			else
				c = 'l';
		}
		first = 1;
		switch (c) {

		case 'a':
			/* ascii strings */
			FUNC2((ndo, "\""));
			if (FUNC6(ndo, bp, len, ndo->ndo_snapend)) {
				FUNC2((ndo, "\""));
				goto trunc;
			}
			FUNC2((ndo, "\""));
			bp += len;
			len = 0;
			break;

		case 'i':
		case 'l':
		case 'L':
			/* ip addresses/32-bit words */
			while (len >= sizeof(ul)) {
				if (!first)
					FUNC2((ndo, ","));
				ul = FUNC1(bp);
				if (c == 'i') {
					ul = FUNC7(ul);
					FUNC2((ndo, "%s", FUNC8(ndo, &ul)));
				} else if (c == 'L')
					FUNC2((ndo, "%d", ul));
				else
					FUNC2((ndo, "%u", ul));
				bp += sizeof(ul);
				len -= sizeof(ul);
				first = 0;
			}
			break;

		case 'p':
			/* IP address pairs */
			while (len >= 2*sizeof(ul)) {
				if (!first)
					FUNC2((ndo, ","));
				FUNC9((char *)&ul, (const char *)bp, sizeof(ul));
				FUNC2((ndo, "(%s:", FUNC8(ndo, &ul)));
				bp += sizeof(ul);
				FUNC9((char *)&ul, (const char *)bp, sizeof(ul));
				FUNC2((ndo, "%s)", FUNC8(ndo, &ul)));
				bp += sizeof(ul);
				len -= 2*sizeof(ul);
				first = 0;
			}
			break;

		case 's':
			/* shorts */
			while (len >= sizeof(us)) {
				if (!first)
					FUNC2((ndo, ","));
				us = FUNC0(bp);
				FUNC2((ndo, "%u", us));
				bp += sizeof(us);
				len -= sizeof(us);
				first = 0;
			}
			break;

		case 'B':
			/* boolean */
			while (len > 0) {
				if (!first)
					FUNC2((ndo, ","));
				switch (*bp) {
				case 0:
					FUNC2((ndo, "N"));
					break;
				case 1:
					FUNC2((ndo, "Y"));
					break;
				default:
					FUNC2((ndo, "%u?", *bp));
					break;
				}
				++bp;
				--len;
				first = 0;
			}
			break;

		case 'b':
		case 'x':
		default:
			/* Bytes */
			while (len > 0) {
				if (!first)
					FUNC2((ndo, c == 'x' ? ":" : "."));
				if (c == 'x')
					FUNC2((ndo, "%02x", *bp));
				else
					FUNC2((ndo, "%u", *bp));
				++bp;
				--len;
				first = 0;
			}
			break;

		case '$':
			/* Guys we can't handle with one of the usual cases */
			switch (tag) {

			case TAG_NETBIOS_NODE:
				/* this option should be at least 1 byte long */
				if (len < 1) {
					FUNC2((ndo, "ERROR: length < 1 bytes"));
					break;
				}
				tag = *bp++;
				--len;
				FUNC2((ndo, "%s", FUNC11(nbo2str, NULL, tag)));
				break;

			case TAG_OPT_OVERLOAD:
				/* this option should be at least 1 byte long */
				if (len < 1) {
					FUNC2((ndo, "ERROR: length < 1 bytes"));
					break;
				}
				tag = *bp++;
				--len;
				FUNC2((ndo, "%s", FUNC11(oo2str, NULL, tag)));
				break;

			case TAG_CLIENT_FQDN:
				/* this option should be at least 3 bytes long */
				if (len < 3) {
					FUNC2((ndo, "ERROR: length < 3 bytes"));
					bp += len;
					len = 0;
					break;
				}
				if (*bp)
					FUNC2((ndo, "[%s] ", FUNC5(*bp)));
				bp++;
				if (*bp || *(bp+1))
					FUNC2((ndo, "%u/%u ", *bp, *(bp+1)));
				bp += 2;
				FUNC2((ndo, "\""));
				if (FUNC6(ndo, bp, len - 3, ndo->ndo_snapend)) {
					FUNC2((ndo, "\""));
					goto trunc;
				}
				FUNC2((ndo, "\""));
				bp += len - 3;
				len = 0;
				break;

			case TAG_CLIENT_ID:
			    {
				int type;

				/* this option should be at least 1 byte long */
				if (len < 1) {
					FUNC2((ndo, "ERROR: length < 1 bytes"));
					break;
				}
				type = *bp++;
				len--;
				if (type == 0) {
					FUNC2((ndo, "\""));
					if (FUNC6(ndo, bp, len, ndo->ndo_snapend)) {
						FUNC2((ndo, "\""));
						goto trunc;
					}
					FUNC2((ndo, "\""));
					bp += len;
					len = 0;
					break;
				} else {
					FUNC2((ndo, "%s ", FUNC11(arp2str, "hardware-type %u,", type)));
					while (len > 0) {
						if (!first)
							FUNC2((ndo, ":"));
						FUNC2((ndo, "%02x", *bp));
						++bp;
						--len;
						first = 0;
					}
				}
				break;
			    }

			case TAG_AGENT_CIRCUIT:
				while (len >= 2) {
					subopt = *bp++;
					suboptlen = *bp++;
					len -= 2;
					if (suboptlen > len) {
						FUNC2((ndo, "\n\t      %s SubOption %u, length %u: length goes past end of option",
							  FUNC11(agent_suboption_values, "Unknown", subopt),
							  subopt,
							  suboptlen));
						bp += len;
						len = 0;
						break;
					}
					FUNC2((ndo, "\n\t      %s SubOption %u, length %u: ",
						  FUNC11(agent_suboption_values, "Unknown", subopt),
						  subopt,
						  suboptlen));
					switch (subopt) {

					case AGENT_SUBOPTION_CIRCUIT_ID: /* fall through */
					case AGENT_SUBOPTION_REMOTE_ID:
					case AGENT_SUBOPTION_SUBSCRIBER_ID:
						if (FUNC6(ndo, bp, suboptlen, ndo->ndo_snapend))
							goto trunc;
						break;

					default:
						FUNC10(ndo, bp, "\n\t\t", suboptlen);
					}

					len -= suboptlen;
					bp += suboptlen;
				}
				break;

			case TAG_CLASSLESS_STATIC_RT:
			case TAG_CLASSLESS_STA_RT_MS:
			    {
				u_int mask_width, significant_octets, i;

				/* this option should be at least 5 bytes long */
				if (len < 5) {
					FUNC2((ndo, "ERROR: length < 5 bytes"));
					bp += len;
					len = 0;
					break;
				}
				while (len > 0) {
					if (!first)
						FUNC2((ndo, ","));
					mask_width = *bp++;
					len--;
					/* mask_width <= 32 */
					if (mask_width > 32) {
						FUNC2((ndo, "[ERROR: Mask width (%d) > 32]", mask_width));
						bp += len;
						len = 0;
						break;
					}
					significant_octets = (mask_width + 7) / 8;
					/* significant octets + router(4) */
					if (len < significant_octets + 4) {
						FUNC2((ndo, "[ERROR: Remaining length (%u) < %u bytes]", len, significant_octets + 4));
						bp += len;
						len = 0;
						break;
					}
					FUNC2((ndo, "("));
					if (mask_width == 0)
						FUNC2((ndo, "default"));
					else {
						for (i = 0; i < significant_octets ; i++) {
							if (i > 0)
								FUNC2((ndo, "."));
							FUNC2((ndo, "%d", *bp++));
						}
						for (i = significant_octets ; i < 4 ; i++)
							FUNC2((ndo, ".0"));
						FUNC2((ndo, "/%d", mask_width));
					}
					FUNC9((char *)&ul, (const char *)bp, sizeof(ul));
					FUNC2((ndo, ":%s)", FUNC8(ndo, &ul)));
					bp += sizeof(ul);
					len -= (significant_octets + 4);
					first = 0;
				}
				break;
			    }

			case TAG_USER_CLASS:
			    {
				u_int suboptnumber = 1;

				first = 1;
				if (len < 2) {
					FUNC2((ndo, "ERROR: length < 2 bytes"));
					bp += len;
					len = 0;
					break;
				}
				while (len > 0) {
					suboptlen = *bp++;
					len--;
					FUNC2((ndo, "\n\t      "));
					FUNC2((ndo, "instance#%u: ", suboptnumber));
					if (suboptlen == 0) {
						FUNC2((ndo, "ERROR: suboption length must be non-zero"));
						bp += len;
						len = 0;
						break;
					}
					if (len < suboptlen) {
						FUNC2((ndo, "ERROR: invalid option"));
						bp += len;
						len = 0;
						break;
					}
					FUNC2((ndo, "\""));
					if (FUNC6(ndo, bp, suboptlen, ndo->ndo_snapend)) {
						FUNC2((ndo, "\""));
						goto trunc;
					}
					FUNC2((ndo, "\""));
					FUNC2((ndo, ", length %d", suboptlen));
					suboptnumber++;
					len -= suboptlen;
					bp += suboptlen;
				}
				break;
			    }

			default:
				FUNC2((ndo, "[unknown special tag %u, size %u]",
					  tag, len));
				bp += len;
				len = 0;
				break;
			}
			break;
		}
		/* Data left over? */
		if (len) {
			FUNC2((ndo, "\n\t  trailing data length %u", len));
			bp += len;
		}
	}
	return;
trunc:
	FUNC2((ndo, "|[rfc1048]"));
}