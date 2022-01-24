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
struct auth_xfer {TYPE_1__* task_transfer; } ;
struct auth_chunk {struct auth_chunk* next; int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
struct TYPE_2__ {struct auth_chunk* chunks_last; struct auth_chunk* chunks_first; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_chunk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(sldns_buffer* pkt, struct auth_xfer* xfr)
{
	/* alloc it */
	struct auth_chunk* e;
	e = (struct auth_chunk*)FUNC0(1, sizeof(*e));
	if(!e) return 0;
	e->next = NULL;
	e->len = FUNC4(pkt);
	e->data = FUNC2(FUNC3(pkt), e->len);
	if(!e->data) {
		FUNC1(e);
		return 0;
	}

	/* alloc succeeded, link into list */
	if(!xfr->task_transfer->chunks_first)
		xfr->task_transfer->chunks_first = e;
	if(xfr->task_transfer->chunks_last)
		xfr->task_transfer->chunks_last->next = e;
	xfr->task_transfer->chunks_last = e;
	return 1;
}