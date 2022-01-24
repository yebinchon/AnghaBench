#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  union uni_ieall {int dummy; } uni_ieall ;
typedef  size_t u_int ;
struct unicx {int dummy; } ;
struct uni_msg {int dummy; } ;
struct TYPE_14__ {size_t nattr; int** attr; } ;
struct TYPE_13__ {int vpci; int vci; } ;
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/  traffic; } ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  ie; } ;
struct TYPE_10__ {int reason; int cond; int user; int ie; } ;
struct TYPE_9__ {int pu; int na; int cond; } ;
struct TYPE_16__ {int mtype; int* timer; int param; TYPE_6__ attr; int /*<<< orphan*/  number; int /*<<< orphan*/  tns; TYPE_5__ vpci; TYPE_4__ traffic; TYPE_3__ ie; TYPE_2__ rej; TYPE_1__ cond; } ;
struct TYPE_15__ {int present; } ;
struct uni_ie_cause {int loc; int cause; TYPE_8__ u; TYPE_7__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uni_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uni_msg*,int) ; 
 scalar_t__ FUNC2 (struct uni_ie_cause) ; 
 int /*<<< orphan*/  FUNC3 (struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int UNI_CAUSE_ATTR_P ; 
 int UNI_CAUSE_COND_P ; 
 int UNI_CAUSE_IE_P ; 
 int UNI_CAUSE_MTYPE_P ; 
 int UNI_CAUSE_NUMBER_P ; 
 int UNI_CAUSE_PARAM_P ; 
 int UNI_CAUSE_REJ_IE_P ; 
 int UNI_CAUSE_REJ_P ; 
 int UNI_CAUSE_REJ_USER_P ; 
 int UNI_CAUSE_TIMER_P ; 
 int UNI_CAUSE_TNS_P ; 
 int UNI_CAUSE_TRAFFIC_P ; 
 int UNI_CAUSE_VPCI_P ; 
 int /*<<< orphan*/  UNI_IE_CALLED ; 
 int /*<<< orphan*/  UNI_IE_CAUSE ; 
 int /*<<< orphan*/  UNI_IE_TNS ; 
 int /*<<< orphan*/  cause ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct uni_msg*,union uni_ieall*,struct unicx*) ; 

__attribute__((used)) static int
FUNC6(struct uni_msg *msg, struct uni_ie_cause *ie, struct unicx *cx)
{
	u_int i;

	FUNC4(cause, UNI_IE_CAUSE, 30);

	if (FUNC2(*ie)) {
		FUNC1(msg, 0x00 | ie->loc);
	} else {
		FUNC1(msg, 0x80 | ie->loc);
	}
	FUNC1(msg, 0x80 | ie->cause);

	if (ie->h.present & UNI_CAUSE_COND_P)
		FUNC1(msg, 0x80 | (ie->u.cond.pu << 3) |
		    (ie->u.cond.na << 2) | ie->u.cond.cond);

	else if (ie->h.present & UNI_CAUSE_REJ_P) {
		FUNC1(msg, 0x80 | (ie->u.rej.reason << 2) | ie->u.rej.cond);
		if (ie->h.present & UNI_CAUSE_REJ_USER_P)
			FUNC1(msg, ie->u.rej.user);
		else if (ie->h.present & UNI_CAUSE_REJ_IE_P)
			FUNC1(msg, ie->u.rej.ie);

	} else if(ie->h.present & UNI_CAUSE_IE_P)
		FUNC0(msg, ie->u.ie.ie, ie->u.ie.len);

	else if (ie->h.present & UNI_CAUSE_TRAFFIC_P)
		FUNC0(msg, ie->u.traffic.traffic, ie->u.traffic.len);

	else if (ie->h.present & UNI_CAUSE_VPCI_P) {
		FUNC1(msg, (ie->u.vpci.vpci >> 8));
		FUNC1(msg, (ie->u.vpci.vpci >> 0));
		FUNC1(msg, (ie->u.vpci.vci >> 8));
		FUNC1(msg, (ie->u.vpci.vci >> 0));

	} else if (ie->h.present & UNI_CAUSE_MTYPE_P)
		FUNC1(msg, ie->u.mtype);

	else if (ie->h.present & UNI_CAUSE_TIMER_P) {
		FUNC1(msg, ie->u.timer[0]);
		FUNC1(msg, ie->u.timer[1]);
		FUNC1(msg, ie->u.timer[2]);

	} else if (ie->h.present & UNI_CAUSE_TNS_P)
		FUNC5(UNI_IE_TNS, msg,
		    (union uni_ieall *)&ie->u.tns, cx);

	else if (ie->h.present & UNI_CAUSE_NUMBER_P)
		FUNC5(UNI_IE_CALLED, msg,
		    (union uni_ieall *)&ie->u.number, cx);

	else if (ie->h.present & UNI_CAUSE_ATTR_P) {
		for (i = 0; i < ie->u.attr.nattr; i++) {
			FUNC1(msg, ie->u.attr.attr[i][0]);
			if (!ie->u.attr.attr[i][0]) {
				FUNC1(msg, ie->u.attr.attr[i][1]);
				if (!ie->u.attr.attr[i][1])
					FUNC1(msg, ie->u.attr.attr[i][2]);
			}
		}
	} else if (ie->h.present & UNI_CAUSE_PARAM_P)
		FUNC1(msg, ie->u.param);

	FUNC3(msg);

	return (0);
}