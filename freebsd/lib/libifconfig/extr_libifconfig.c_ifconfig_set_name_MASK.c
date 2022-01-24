#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ifreq {char* ifr_data; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
struct TYPE_5__ {int /*<<< orphan*/  errcode; int /*<<< orphan*/  errtype; } ;
struct TYPE_6__ {TYPE_1__ error; } ;
typedef  TYPE_2__ ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  OTHER ; 
 int /*<<< orphan*/  SIOCSIFNAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC5(ifconfig_handle_t *h, const char *name, const char *newname)
{
	struct ifreq ifr;
	char *tmpname;

	FUNC2(&ifr, 0, sizeof(ifr));
	tmpname = FUNC3(newname);
	if (tmpname == NULL) {
		h->error.errtype = OTHER;
		h->error.errcode = ENOMEM;
		return (-1);
	}

	(void)FUNC4(ifr.ifr_name, name, sizeof(ifr.ifr_name));
	ifr.ifr_data = tmpname;
	if (FUNC1(h, AF_LOCAL, SIOCSIFNAME, &ifr) != 0) {
		FUNC0(tmpname);
		return (-1);
	}

	FUNC0(tmpname);
	return (0);
}