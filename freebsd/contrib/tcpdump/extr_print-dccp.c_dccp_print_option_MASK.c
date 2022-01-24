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
typedef  int uint8_t ;
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int const,int) ; 
 int /*<<< orphan*/ * dccp_feature_nums ; 
 int /*<<< orphan*/  dccp_option_values ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int FUNC6(netdissect_options *ndo, const u_char *option, u_int hlen)
{
	uint8_t optlen, i;

	FUNC3(*option);

	if (*option >= 32) {
		FUNC3(*(option+1));
		optlen = *(option +1);
		if (optlen < 2) {
			if (*option >= 128)
				FUNC2((ndo, "CCID option %u optlen too short", *option));
			else
				FUNC2((ndo, "%s optlen too short",
					  FUNC5(dccp_option_values, "Option %u", *option)));
			return 0;
		}
	} else
		optlen = 1;

	if (hlen < optlen) {
		if (*option >= 128)
			FUNC2((ndo, "CCID option %u optlen goes past header length",
				  *option));
		else
			FUNC2((ndo, "%s optlen goes past header length",
				  FUNC5(dccp_option_values, "Option %u", *option)));
		return 0;
	}
	FUNC4(*option, optlen);

	if (*option >= 128) {
		FUNC2((ndo, "CCID option %d", *option));
		switch (optlen) {
			case 4:
				FUNC2((ndo, " %u", FUNC0(option + 2)));
				break;
			case 6:
				FUNC2((ndo, " %u", FUNC1(option + 2)));
				break;
			default:
				break;
		}
	} else {
		FUNC2((ndo, "%s", FUNC5(dccp_option_values, "Option %u", *option)));
		switch (*option) {
		case 32:
		case 33:
		case 34:
		case 35:
			if (optlen < 3) {
				FUNC2((ndo, " optlen too short"));
				return optlen;
			}
			if (*(option + 2) < 10){
				FUNC2((ndo, " %s", dccp_feature_nums[*(option + 2)]));
				for (i = 0; i < optlen - 3; i++)
					FUNC2((ndo, " %d", *(option + 3 + i)));
			}
			break;
		case 36:
			if (optlen > 2) {
				FUNC2((ndo, " 0x"));
				for (i = 0; i < optlen - 2; i++)
					FUNC2((ndo, "%02x", *(option + 2 + i)));
			}
			break;
		case 37:
			for (i = 0; i < optlen - 2; i++)
				FUNC2((ndo, " %d", *(option + 2 + i)));
			break;
		case 38:
			if (optlen > 2) {
				FUNC2((ndo, " 0x"));
				for (i = 0; i < optlen - 2; i++)
					FUNC2((ndo, "%02x", *(option + 2 + i)));
			}
			break;
		case 39:
			if (optlen > 2) {
				FUNC2((ndo, " 0x"));
				for (i = 0; i < optlen - 2; i++)
					FUNC2((ndo, "%02x", *(option + 2 + i)));
			}
			break;
		case 40:
			if (optlen > 2) {
				FUNC2((ndo, " 0x"));
				for (i = 0; i < optlen - 2; i++)
					FUNC2((ndo, "%02x", *(option + 2 + i)));
			}
			break;
		case 41:
			if (optlen == 4)
				FUNC2((ndo, " %u", FUNC1(option + 2)));
			else
				FUNC2((ndo, " optlen != 4"));
			break;
		case 42:
			if (optlen == 4)
				FUNC2((ndo, " %u", FUNC1(option + 2)));
			else
				FUNC2((ndo, " optlen != 4"));
			break;
		case 43:
			if (optlen == 6)
				FUNC2((ndo, " %u", FUNC1(option + 2)));
			else if (optlen == 4)
				FUNC2((ndo, " %u", FUNC0(option + 2)));
			else
				FUNC2((ndo, " optlen != 4 or 6"));
			break;
		case 44:
			if (optlen > 2) {
				FUNC2((ndo, " "));
				for (i = 0; i < optlen - 2; i++)
					FUNC2((ndo, "%02x", *(option + 2 + i)));
			}
			break;
		}
	}

	return optlen;
trunc:
	FUNC2((ndo, "%s", tstr));
	return 0;
}