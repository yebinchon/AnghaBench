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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
#define  CTRL_ACK 139 
 int CTRL_ACK_HDRLEN ; 
#define  CTRL_BA 138 
#define  CTRL_BAR 137 
 int CTRL_BAR_HDRLEN ; 
 int CTRL_BA_HDRLEN ; 
#define  CTRL_CF_END 136 
#define  CTRL_CONTROL_WRAPPER 135 
 int CTRL_CONTROL_WRAPPER_HDRLEN ; 
#define  CTRL_CTS 134 
 int CTRL_CTS_HDRLEN ; 
#define  CTRL_END_ACK 133 
 int CTRL_END_ACK_HDRLEN ; 
 int CTRL_END_HDRLEN ; 
#define  CTRL_PS_POLL 132 
 int CTRL_PS_POLL_HDRLEN ; 
#define  CTRL_RTS 131 
 int CTRL_RTS_HDRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int MGMT_HDRLEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
#define  T_CTRL 130 
#define  T_DATA 129 
#define  T_MGMT 128 

__attribute__((used)) static int
FUNC6(netdissect_options *ndo,
                      uint16_t fc)
{
	int len;

	switch (FUNC4(fc)) {
	case T_MGMT:
		return MGMT_HDRLEN;
	case T_CTRL:
		switch (FUNC2(fc)) {
		case CTRL_CONTROL_WRAPPER:
			return CTRL_CONTROL_WRAPPER_HDRLEN;
		case CTRL_BAR:
			return CTRL_BAR_HDRLEN;
		case CTRL_BA:
			return CTRL_BA_HDRLEN;
		case CTRL_PS_POLL:
			return CTRL_PS_POLL_HDRLEN;
		case CTRL_RTS:
			return CTRL_RTS_HDRLEN;
		case CTRL_CTS:
			return CTRL_CTS_HDRLEN;
		case CTRL_ACK:
			return CTRL_ACK_HDRLEN;
		case CTRL_CF_END:
			return CTRL_END_HDRLEN;
		case CTRL_END_ACK:
			return CTRL_END_ACK_HDRLEN;
		default:
			FUNC5((ndo, "unknown 802.11 ctrl frame subtype (%d)", FUNC2(fc)));
			return 0;
		}
	case T_DATA:
		len = (FUNC3(fc) && FUNC1(fc)) ? 30 : 24;
		if (FUNC0(FUNC2(fc)))
			len += 2;
		return len;
	default:
		FUNC5((ndo, "unknown 802.11 frame type (%d)", FUNC4(fc)));
		return 0;
	}
}