#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int length; int /*<<< orphan*/ * buffer; } ;
struct ifreq {TYPE_2__ ifr_buffer; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
struct TYPE_7__ {int /*<<< orphan*/  errcode; int /*<<< orphan*/  errtype; } ;
struct TYPE_9__ {TYPE_1__ error; } ;
typedef  TYPE_3__ ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  OTHER ; 
 int /*<<< orphan*/  SIOCSIFDESCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int FUNC2 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC6 (char const*) ; 

int
FUNC7(ifconfig_handle_t *h, const char *name,
    const char *newdescription)
{
	struct ifreq ifr;
	int desclen;

	FUNC3(&ifr, 0, sizeof(ifr));
	desclen = FUNC6(newdescription);

	/*
	 * Unset description if the new description is 0 characters long.
	 * TODO: Decide whether this should be an error condition instead.
	 */
	if (desclen == 0) {
		return (FUNC2(h, name));
	}

	(void)FUNC5(ifr.ifr_name, name, sizeof(ifr.ifr_name));
	ifr.ifr_buffer.length = desclen + 1;
	ifr.ifr_buffer.buffer = FUNC4(newdescription);

	if (ifr.ifr_buffer.buffer == NULL) {
		h->error.errtype = OTHER;
		h->error.errcode = ENOMEM;
		return (-1);
	}

	if (FUNC1(h, AF_LOCAL, SIOCSIFDESCR, &ifr) != 0) {
		FUNC0(ifr.ifr_buffer.buffer);
		return (-1);
	}

	FUNC0(ifr.ifr_buffer.buffer);
	return (0);
}