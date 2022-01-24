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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_EID_NEIGHBOR_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int*,long) ; 
 void* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,int*,size_t) ; 
 scalar_t__ FUNC3 (char const*,int*) ; 
 void* FUNC4 (char const*,char) ; 
 size_t FUNC5 (char const*) ; 
 char* FUNC6 (char const*,char*) ; 
 long FUNC7 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

int FUNC9(const char *pos, u8 *nei_rep,
				    size_t nei_rep_len)
{
	u8 *nei_pos = nei_rep;
	const char *end;

	/*
	 * BSS Transition Candidate List Entries - Neighbor Report elements
	 * neighbor=<BSSID>,<BSSID Information>,<Operating Class>,
	 * <Channel Number>,<PHY Type>[,<hexdump of Optional Subelements>]
	 */
	while (pos) {
		u8 *nei_start;
		long int val;
		char *endptr, *tmp;

		pos = FUNC6(pos, " neighbor=");
		if (!pos)
			break;
		if (nei_pos + 15 > nei_rep + nei_rep_len) {
			FUNC8(MSG_DEBUG,
				   "Not enough room for additional neighbor");
			return -1;
		}
		pos += 10;

		nei_start = nei_pos;
		*nei_pos++ = WLAN_EID_NEIGHBOR_REPORT;
		nei_pos++; /* length to be filled in */

		if (FUNC3(pos, nei_pos)) {
			FUNC8(MSG_DEBUG, "Invalid BSSID");
			return -1;
		}
		nei_pos += ETH_ALEN;
		pos += 17;
		if (*pos != ',') {
			FUNC8(MSG_DEBUG, "Missing BSSID Information");
			return -1;
		}
		pos++;

		val = FUNC7(pos, &endptr, 0);
		FUNC0(nei_pos, val);
		nei_pos += 4;
		if (*endptr != ',') {
			FUNC8(MSG_DEBUG, "Missing Operating Class");
			return -1;
		}
		pos = endptr + 1;

		*nei_pos++ = FUNC1(pos); /* Operating Class */
		pos = FUNC4(pos, ',');
		if (pos == NULL) {
			FUNC8(MSG_DEBUG, "Missing Channel Number");
			return -1;
		}
		pos++;

		*nei_pos++ = FUNC1(pos); /* Channel Number */
		pos = FUNC4(pos, ',');
		if (pos == NULL) {
			FUNC8(MSG_DEBUG, "Missing PHY Type");
			return -1;
		}
		pos++;

		*nei_pos++ = FUNC1(pos); /* PHY Type */
		end = FUNC4(pos, ' ');
		tmp = FUNC4(pos, ',');
		if (tmp && (!end || tmp < end)) {
			/* Optional Subelements (hexdump) */
			size_t len;

			pos = tmp + 1;
			end = FUNC4(pos, ' ');
			if (end)
				len = end - pos;
			else
				len = FUNC5(pos);
			if (nei_pos + len / 2 > nei_rep + nei_rep_len) {
				FUNC8(MSG_DEBUG,
					   "Not enough room for neighbor subelements");
				return -1;
			}
			if (len & 0x01 ||
			    FUNC2(pos, nei_pos, len / 2) < 0) {
				FUNC8(MSG_DEBUG,
					   "Invalid neighbor subelement info");
				return -1;
			}
			nei_pos += len / 2;
			pos = end;
		}

		nei_start[1] = nei_pos - nei_start - 2;
	}

	return nei_pos - nei_rep;
}