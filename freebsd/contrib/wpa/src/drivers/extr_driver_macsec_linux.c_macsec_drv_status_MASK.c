#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ifname; } ;
struct macsec_drv_data {int /*<<< orphan*/  parent_ifi; int /*<<< orphan*/  ifname; int /*<<< orphan*/  ifi; TYPE_1__ common; } ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(void *priv, char *buf, size_t buflen)
{
	struct macsec_drv_data *drv = priv;
	int res;
	char *pos, *end;

	pos = buf;
	end = buf + buflen;

	res = FUNC0(pos, end - pos,
			  "ifname=%s\n"
			  "ifi=%d\n"
			  "parent_ifname=%s\n"
			  "parent_ifi=%d\n",
			  drv->common.ifname, drv->ifi,
			  drv->ifname, drv->parent_ifi);
	if (FUNC1(end - pos, res))
		return pos - buf;
	pos += res;

	return pos - buf;
}