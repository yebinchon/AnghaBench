#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* buffer; size_t length; } ;
struct ifreq {TYPE_1__ ifr_buffer; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
struct TYPE_7__ {void* errcode; void* errtype; } ;
struct TYPE_8__ {TYPE_2__ error; } ;
typedef  TYPE_3__ ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 void* ENOMEM ; 
 void* OTHER ; 
 int /*<<< orphan*/  SIOCGIFDESCR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*,size_t) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC6 (char*) ; 

int
FUNC7(ifconfig_handle_t *h, const char *name,
    char **description)
{
	struct ifreq ifr;
	char *descr;
	size_t descrlen;

	descr = NULL;
	descrlen = 64;
	FUNC2(&ifr, 0, sizeof(ifr));
	(void)FUNC5(ifr.ifr_name, name, sizeof(ifr.ifr_name));

	for (;;) {
		if ((descr = FUNC3(descr, descrlen)) == NULL) {
			h->error.errtype = OTHER;
			h->error.errcode = ENOMEM;
			return (-1);
		}

		ifr.ifr_buffer.buffer = descr;
		ifr.ifr_buffer.length = descrlen;
		if (FUNC1(h, AF_LOCAL, SIOCGIFDESCR, &ifr) != 0) {
			FUNC0(descr);
			return (-1);
		}

		if (ifr.ifr_buffer.buffer == descr) {
			if (FUNC6(descr) > 0) {
				*description = FUNC4(descr);
				FUNC0(descr);

				if (description == NULL) {
					h->error.errtype = OTHER;
					h->error.errcode = ENOMEM;
					return (-1);
				}

				return (0);
			}
		} else if (ifr.ifr_buffer.length > descrlen) {
			descrlen = ifr.ifr_buffer.length;
			continue;
		}
		break;
	}
	FUNC0(descr);
	h->error.errtype = OTHER;
	h->error.errcode = 0;
	return (-1);
}