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
struct sockaddr {int dummy; } ;
struct rad_handle {scalar_t__ type; int* out; int out_len; scalar_t__* in; size_t srv; TYPE_1__* servers; int /*<<< orphan*/  fd; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 size_t POS_CODE ; 
 size_t POS_LENGTH ; 
 scalar_t__ RADIUS_SERVER ; 
 scalar_t__ RAD_ACCESS_REQUEST ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct rad_handle*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct rad_handle*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rad_handle*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct rad_handle *h)
{
	int n;

	if (h->type != RADIUS_SERVER) {
		FUNC0(h, "denied function call");
		return (-1);
	}
	/* Fill in the length field in the message */
	h->out[POS_LENGTH] = h->out_len >> 8;
	h->out[POS_LENGTH+1] = h->out_len;

	FUNC1(h,
	    (h->in[POS_CODE] == RAD_ACCESS_REQUEST) ? 1 : 0);
	FUNC2(h, 1);

	/* Send the request */
	n = FUNC3(h->fd, h->out, h->out_len, 0,
	    (const struct sockaddr *)&h->servers[h->srv].addr,
	    sizeof h->servers[h->srv].addr);
	if (n != h->out_len) {
		if (n == -1)
			FUNC0(h, "sendto: %s", FUNC4(errno));
		else
			FUNC0(h, "sendto: short write");
		return -1;
	}

	return 0;
}