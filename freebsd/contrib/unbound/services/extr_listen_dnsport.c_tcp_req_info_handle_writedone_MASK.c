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
struct tcp_req_info {scalar_t__ num_done_req; TYPE_1__* cp; scalar_t__ read_is_closed; } ;
struct TYPE_2__ {int tcp_is_reading; int /*<<< orphan*/  repinfo; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_req_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_req_info*) ; 

void
FUNC4(struct tcp_req_info* req)
{
	/* back to reading state, we finished this write event */
	FUNC1(req->cp->buffer);
	if(req->num_done_req == 0 && req->read_is_closed) {
		/* no more to write and nothing to read, close it */
		FUNC0(&req->cp->repinfo);
		return;
	}
	req->cp->tcp_is_reading = 1;
	/* see if another result needs writing */
	FUNC3(req);

	/* see if there is more to write, if not stop_listening for writing */
	/* see if new requests are allowed, if so, start_listening
	 * for reading */
	FUNC2(req);
}