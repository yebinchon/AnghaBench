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
struct wpa_ctrl {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct wpa_ctrl*,char*) ; 

__attribute__((used)) static int FUNC4(struct wpa_ctrl *ctrl, int argc,
				      char *argv[])
{
	char buf[2000], *tmp;
	int res, i, total;

	if (argc < 1) {
		FUNC2("Invalid 'bss_tm_req' command - at least one argument (STA addr) is needed\n");
		return -1;
	}

	res = FUNC0(buf, sizeof(buf), "BSS_TM_REQ %s", argv[0]);
	if (FUNC1(sizeof(buf), res))
		return -1;

	total = res;
	for (i = 1; i < argc; i++) {
		tmp = &buf[total];
		res = FUNC0(tmp, sizeof(buf) - total, " %s", argv[i]);
		if (FUNC1(sizeof(buf) - total, res))
			return -1;
		total += res;
	}
	return FUNC3(ctrl, buf);
}