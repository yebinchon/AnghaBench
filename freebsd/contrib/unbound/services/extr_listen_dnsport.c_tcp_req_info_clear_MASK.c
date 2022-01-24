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
struct tcp_req_open_item {struct tcp_req_open_item* buf; scalar_t__ len; struct tcp_req_open_item* next; int /*<<< orphan*/  mesh_state; int /*<<< orphan*/  mesh; } ;
struct tcp_req_info {scalar_t__ read_is_closed; scalar_t__ num_done_req; struct tcp_req_open_item* done_req_list; scalar_t__ num_open_req; struct tcp_req_open_item* open_req_list; int /*<<< orphan*/  cp; } ;
struct tcp_req_done_item {struct tcp_req_done_item* buf; scalar_t__ len; struct tcp_req_done_item* next; int /*<<< orphan*/  mesh_state; int /*<<< orphan*/  mesh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_req_open_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stream_wait_count ; 
 int /*<<< orphan*/  stream_wait_count_lock ; 

void FUNC4(struct tcp_req_info* req)
{
	struct tcp_req_open_item* open, *nopen;
	struct tcp_req_done_item* item, *nitem;
	if(!req) return;

	/* free outstanding request mesh reply entries */
	open = req->open_req_list;
	while(open) {
		nopen = open->next;
		FUNC3(open->mesh, open->mesh_state, req->cp);
		FUNC0(open);
		open = nopen;
	}
	req->open_req_list = NULL;
	req->num_open_req = 0;
	
	/* free pending writable result packets */
	item = req->done_req_list;
	while(item) {
		nitem = item->next;
		FUNC1(&stream_wait_count_lock);
		stream_wait_count -= (sizeof(struct tcp_req_done_item)
			+item->len);
		FUNC2(&stream_wait_count_lock);
		FUNC0(item->buf);
		FUNC0(item);
		item = nitem;
	}
	req->done_req_list = NULL;
	req->num_done_req = 0;
	req->read_is_closed = 0;
}