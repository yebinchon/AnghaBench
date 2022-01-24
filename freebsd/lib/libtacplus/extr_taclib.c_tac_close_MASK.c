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
struct tac_handle {int fd; int num_servers; int /*<<< orphan*/ * avs; int /*<<< orphan*/  user_msg; int /*<<< orphan*/  data; int /*<<< orphan*/  rem_addr; int /*<<< orphan*/  port; int /*<<< orphan*/  user; TYPE_1__* servers; } ;
struct TYPE_2__ {struct tac_handle* secret; } ;

/* Variables and functions */
 int MAXAVPAIRS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tac_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tac_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct tac_handle*) ; 

void
FUNC5(struct tac_handle *h)
{
	int i, srv;

	if (h->fd != -1)
		FUNC0(h->fd);
	for (srv = 0;  srv < h->num_servers;  srv++) {
		FUNC3(h->servers[srv].secret, 0,
		    FUNC4(h->servers[srv].secret));
		FUNC1(h->servers[srv].secret);
	}
	FUNC2(&h->user);
	FUNC2(&h->port);
	FUNC2(&h->rem_addr);
	FUNC2(&h->data);
	FUNC2(&h->user_msg);
	for (i=0; i<MAXAVPAIRS; i++)
		FUNC2(&(h->avs[i]));

	/* Clear everything else before freeing memory */
	FUNC3(h, 0, sizeof(struct tac_handle));
	FUNC1(h);
}