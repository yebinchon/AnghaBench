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
struct tcp_req_open_item {struct mesh_state* mesh_state; struct mesh_area* mesh; struct tcp_req_open_item* next; } ;
struct tcp_req_info {int /*<<< orphan*/  num_open_req; struct tcp_req_open_item* open_req_list; } ;
struct mesh_state {int dummy; } ;
struct mesh_area {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

int
FUNC2(struct tcp_req_info* req,
	struct mesh_area* mesh, struct mesh_state* m)
{
	struct tcp_req_open_item* item;
	FUNC0(req && mesh && m);
	item = (struct tcp_req_open_item*)FUNC1(sizeof(*item));
	if(!item) return 0;
	item->next = req->open_req_list;
	item->mesh = mesh;
	item->mesh_state = m;
	req->open_req_list = item;
	req->num_open_req++;
	return 1;
}