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
typedef  int /*<<< orphan*/  u_char ;
struct ctrl_rts_hdr_t {int /*<<< orphan*/  ta; int /*<<< orphan*/  ra; } ;
struct ctrl_ps_poll_hdr_t {int /*<<< orphan*/  ta; int /*<<< orphan*/  bssid; } ;
struct ctrl_end_hdr_t {int /*<<< orphan*/  bssid; int /*<<< orphan*/  ra; } ;
struct ctrl_end_ack_hdr_t {int /*<<< orphan*/  bssid; int /*<<< orphan*/  ra; } ;
struct ctrl_cts_hdr_t {int /*<<< orphan*/  ra; } ;
struct ctrl_bar_hdr_t {int /*<<< orphan*/  seq; int /*<<< orphan*/  ctl; int /*<<< orphan*/  ta; int /*<<< orphan*/  ra; } ;
struct ctrl_ba_hdr_t {int /*<<< orphan*/  ra; } ;
struct ctrl_ack_hdr_t {int /*<<< orphan*/  ra; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
#define  CTRL_ACK 135 
#define  CTRL_BA 134 
#define  CTRL_BAR 133 
#define  CTRL_CF_END 132 
#define  CTRL_CTS 131 
#define  CTRL_END_ACK 130 
#define  CTRL_PS_POLL 129 
#define  CTRL_RTS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo, uint16_t fc, const u_char *p)
{
	switch (FUNC1(fc)) {
	case CTRL_BAR:
		FUNC2((ndo, " RA:%s TA:%s CTL(%x) SEQ(%u) ",
		    FUNC3(ndo, ((const struct ctrl_bar_hdr_t *)p)->ra),
		    FUNC3(ndo, ((const struct ctrl_bar_hdr_t *)p)->ta),
		    FUNC0(&(((const struct ctrl_bar_hdr_t *)p)->ctl)),
		    FUNC0(&(((const struct ctrl_bar_hdr_t *)p)->seq))));
		break;
	case CTRL_BA:
		FUNC2((ndo, "RA:%s ",
		    FUNC3(ndo, ((const struct ctrl_ba_hdr_t *)p)->ra)));
		break;
	case CTRL_PS_POLL:
		FUNC2((ndo, "BSSID:%s TA:%s ",
		    FUNC3(ndo, ((const struct ctrl_ps_poll_hdr_t *)p)->bssid),
		    FUNC3(ndo, ((const struct ctrl_ps_poll_hdr_t *)p)->ta)));
		break;
	case CTRL_RTS:
		FUNC2((ndo, "RA:%s TA:%s ",
		    FUNC3(ndo, ((const struct ctrl_rts_hdr_t *)p)->ra),
		    FUNC3(ndo, ((const struct ctrl_rts_hdr_t *)p)->ta)));
		break;
	case CTRL_CTS:
		FUNC2((ndo, "RA:%s ",
		    FUNC3(ndo, ((const struct ctrl_cts_hdr_t *)p)->ra)));
		break;
	case CTRL_ACK:
		FUNC2((ndo, "RA:%s ",
		    FUNC3(ndo, ((const struct ctrl_ack_hdr_t *)p)->ra)));
		break;
	case CTRL_CF_END:
		FUNC2((ndo, "RA:%s BSSID:%s ",
		    FUNC3(ndo, ((const struct ctrl_end_hdr_t *)p)->ra),
		    FUNC3(ndo, ((const struct ctrl_end_hdr_t *)p)->bssid)));
		break;
	case CTRL_END_ACK:
		FUNC2((ndo, "RA:%s BSSID:%s ",
		    FUNC3(ndo, ((const struct ctrl_end_ack_hdr_t *)p)->ra),
		    FUNC3(ndo, ((const struct ctrl_end_ack_hdr_t *)p)->bssid)));
		break;
	default:
		/* We shouldn't get here - we should already have quit */
		break;
	}
}