#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int time_t ;
struct bt_devinquiry {int /*<<< orphan*/  clock_offset; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  pscan_period_mode; int /*<<< orphan*/  pscan_rep_mode; int /*<<< orphan*/  bdaddr; } ;
struct bt_devfilter {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  num_responses; } ;
typedef  TYPE_1__ ng_hci_inquiry_result_ep ;
struct TYPE_7__ {int /*<<< orphan*/  clock_offset; int /*<<< orphan*/  uclass; int /*<<< orphan*/  page_scan_period_mode; int /*<<< orphan*/  page_scan_rep_mode; int /*<<< orphan*/  bdaddr; } ;
typedef  TYPE_2__ ng_hci_inquiry_response ;
struct TYPE_8__ {int* lap; void* num_responses; void* inquiry_length; } ;
typedef  TYPE_3__ ng_hci_inquiry_cp ;
struct TYPE_9__ {int event; } ;
typedef  TYPE_4__ ng_hci_event_pkt_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  _devname ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int HCI_DEVNAME_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
#define  NG_HCI_EVENT_INQUIRY_COMPL 129 
#define  NG_HCI_EVENT_INQUIRY_RESULT 128 
 int /*<<< orphan*/  NG_HCI_OCF_INQUIRY ; 
 int /*<<< orphan*/  NG_HCI_OGF_LINK_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bt_devany_cb ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int,struct bt_devfilter*,struct bt_devfilter*) ; 
 int /*<<< orphan*/  FUNC6 (struct bt_devfilter*,int) ; 
 int FUNC7 (char const*) ; 
 int FUNC8 (int,void**,int,int) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 struct bt_devinquiry* FUNC10 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC11 (struct bt_devinquiry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC15(char const *devname, time_t length, int num_rsp,
		struct bt_devinquiry **ii)
{
	uint8_t				buf[320];
	char				_devname[HCI_DEVNAME_SIZE];
	struct bt_devfilter		f;
	ng_hci_inquiry_cp		*cp = (ng_hci_inquiry_cp *) buf;
	ng_hci_event_pkt_t		*e = (ng_hci_event_pkt_t *) buf;
	ng_hci_inquiry_result_ep	*ep = (ng_hci_inquiry_result_ep *)(e+1);
	ng_hci_inquiry_response		*ir;
	struct bt_devinquiry		*i;
	int				s, n;

	if (ii == NULL) {
		errno = EINVAL;
		return (-1);
	}

	if (devname == NULL) {
		FUNC14(_devname, 0, sizeof(_devname));
		devname = _devname;

		n = FUNC4(bt_devany_cb, _devname);
		if (n <= 0) {
			if (n == 0)
				*ii = NULL;

			return (n);
		}
	}

	s = FUNC7(devname);
	if (s < 0)
		return (-1);

	if (FUNC5(s, NULL, &f) < 0) {
		FUNC3(s);
		return (-1);
	}

	FUNC6(&f, NG_HCI_EVENT_INQUIRY_COMPL);
	FUNC6(&f, NG_HCI_EVENT_INQUIRY_RESULT);

	if (FUNC5(s, &f, NULL) < 0) {
		FUNC3(s);
		return (-1);
	}

	/* Always use GIAC LAP */
	cp->lap[0] = 0x33;
	cp->lap[1] = 0x8b;
	cp->lap[2] = 0x9e;

	/*
	 * Calculate inquire length in 1.28 second units
	 * v2.x specification says that 1.28 -> 61.44 seconds
	 * range is acceptable
	 */

	if (length <= 0)
		length = 5;
	else if (length == 1)
		length = 2;
	else if (length > 62)
		length = 62;

	cp->inquiry_length = (uint8_t)((length * 100) / 128);

	if (num_rsp <= 0 || num_rsp > 255)
		num_rsp = 8;
	cp->num_responses = (uint8_t) num_rsp;

	i = *ii = FUNC10(num_rsp, sizeof(struct bt_devinquiry));
	if (i == NULL) {
		FUNC3(s);
		errno = ENOMEM;
		return (-1);
	}

	if (FUNC9(s,
		FUNC1(NG_HCI_OGF_LINK_CONTROL, NG_HCI_OCF_INQUIRY),
			cp, sizeof(*cp)) < 0) {
		FUNC11(i);
		FUNC3(s);
		return (-1);
	}

wait_for_more:

	n = FUNC8(s, buf, sizeof(buf), length);
	if (n < 0) {
		FUNC11(i);
		FUNC3(s);
		return (-1);
	}

	if (n < sizeof(ng_hci_event_pkt_t)) {
		FUNC11(i);
		FUNC3(s);
		errno = EIO;
		return (-1);
	}

	switch (e->event) {
	case NG_HCI_EVENT_INQUIRY_COMPL:
		break;

	case NG_HCI_EVENT_INQUIRY_RESULT:
		ir = (ng_hci_inquiry_response *)(ep + 1);

		for (n = 0; n < FUNC0(ep->num_responses, num_rsp); n ++) {
			FUNC2(&i->bdaddr, &ir->bdaddr);
			i->pscan_rep_mode = ir->page_scan_rep_mode;
			i->pscan_period_mode = ir->page_scan_period_mode;
			FUNC13(i->dev_class, ir->uclass, sizeof(i->dev_class));
			i->clock_offset = FUNC12(ir->clock_offset);

			ir ++;
			i ++;
			num_rsp --;
		}
		/* FALLTHROUGH */

	default:
		goto wait_for_more;
		/* NOT REACHED */
	}

	FUNC3(s);
		
	return (i - *ii);
}