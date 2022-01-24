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
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int /*<<< orphan*/ * iface; int /*<<< orphan*/ * ctrl_interface; } ;

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char * FUNC3(struct hostapd_data *hapd)
{
	char *buf;
	size_t len;

	if (hapd->conf->ctrl_interface == NULL)
		return NULL;

	len = FUNC2(hapd->conf->ctrl_interface) +
		FUNC2(hapd->conf->iface) + 2;
	buf = FUNC0(len);
	if (buf == NULL)
		return NULL;

	FUNC1(buf, len, "%s/%s",
		    hapd->conf->ctrl_interface, hapd->conf->iface);
	buf[len - 1] = '\0';
	return buf;
}