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
typedef  int /*<<< orphan*/  txt ;
struct wps_er_ap {int /*<<< orphan*/  location; int /*<<< orphan*/  addr; int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC5(struct wps_er_ap *ap, char *sid)
{
	char *pos;
	char txt[100];

	if (!sid) {
		FUNC4(MSG_DEBUG, "WPS ER: No SID received from %s (%s)",
			   FUNC0(ap->addr), ap->location);
		return -1;
	}

	pos = FUNC1(sid, "uuid:");
	if (!pos) {
		FUNC4(MSG_DEBUG, "WPS ER: Invalid SID received from "
			   "%s (%s): '%s'", FUNC0(ap->addr), ap->location,
			   sid);
		return -1;
	}

	pos += 5;
	if (FUNC3(pos, ap->sid) < 0) {
		FUNC4(MSG_DEBUG, "WPS ER: Invalid SID received from "
			   "%s (%s): '%s'", FUNC0(ap->addr), ap->location,
			   sid);
		return -1;
	}

	FUNC2(ap->sid, txt, sizeof(txt));
	FUNC4(MSG_DEBUG, "WPS ER: SID for subscription with %s (%s): %s",
		   FUNC0(ap->addr), ap->location, txt);

	return 0;
}