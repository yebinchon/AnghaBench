#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_3__ {int /*<<< orphan*/  lzh; } ;
typedef  TYPE_1__ libbe_handle_t ;

/* Variables and functions */
 int BE_SNAP_SERIAL_MAX ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int) ; 
 scalar_t__ FUNC2 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(libbe_handle_t *lbh, char *buf, size_t buflen)
{
	time_t rawtime;
	int len, serial;

	FUNC4(&rawtime);
	len = FUNC3(buf);
	len += FUNC2(buf + len, buflen - len, "@%F-%T", FUNC0(&rawtime));
	/* No room for serial... caller will do its best */
	if (buflen - len < 2)
		return;

	for (serial = 0; serial < BE_SNAP_SERIAL_MAX; ++serial) {
		FUNC1(buf + len, buflen - len, "-%d", serial);
		if (!FUNC5(lbh->lzh, buf, ZFS_TYPE_SNAPSHOT))
			return;
	}
}