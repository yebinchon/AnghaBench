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
struct tcp_req_info {scalar_t__ num_done_req; } ;
struct tcp_req_done_item {struct tcp_req_done_item* buf; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_req_done_item*) ; 
 struct tcp_req_done_item* FUNC1 (struct tcp_req_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_req_info*,struct tcp_req_done_item*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct tcp_req_info* req)
{
	if(req->num_done_req > 0) {
		/* unlist the done item from the list of pending results */
		struct tcp_req_done_item* item = FUNC1(req);
		FUNC2(req, item->buf, item->len);
		FUNC0(item->buf);
		FUNC0(item);
	}
}