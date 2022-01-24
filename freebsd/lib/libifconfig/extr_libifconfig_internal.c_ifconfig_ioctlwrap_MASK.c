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
struct TYPE_5__ {unsigned long ioctl_request; int /*<<< orphan*/  errcode; int /*<<< orphan*/  errtype; } ;
struct TYPE_6__ {TYPE_1__ error; } ;
typedef  TYPE_2__ ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (TYPE_2__*,int const,int*) ; 
 scalar_t__ FUNC1 (int,unsigned long,void*) ; 

int
FUNC2(ifconfig_handle_t *h, const int addressfamily,
    unsigned long request, void *data)
{
	int s;

	if (FUNC0(h, addressfamily, &s) != 0) {
		return (-1);
	}

	if (FUNC1(s, request, data) != 0) {
		h->error.errtype = IOCTL;
		h->error.ioctl_request = request;
		h->error.errcode = errno;
		return (-1);
	}

	return (0);
}