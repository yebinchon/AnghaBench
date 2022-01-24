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
struct tac_msg {int type; scalar_t__ flags; int /*<<< orphan*/  version; } ;
struct tac_handle {int /*<<< orphan*/ * avs; int /*<<< orphan*/  user_msg; int /*<<< orphan*/  data; int /*<<< orphan*/  rem_addr; int /*<<< orphan*/  port; int /*<<< orphan*/  user; struct tac_msg request; scalar_t__ last_seq_no; } ;

/* Variables and functions */
 int MAXAVPAIRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 

__attribute__((used)) static void
FUNC2(struct tac_handle *h, int msg_type, int var, int type)
{
	struct tac_msg *msg;
	int i;

	h->last_seq_no = 0;

	msg = &h->request;
	msg->type = msg_type;
	msg->version = FUNC1(msg_type, var, type);
	msg->flags = 0; /* encrypted packet body */

	FUNC0(&h->user);
	FUNC0(&h->port);
	FUNC0(&h->rem_addr);
	FUNC0(&h->data);
	FUNC0(&h->user_msg);

	for (i=0; i<MAXAVPAIRS; i++)
		FUNC0(&(h->avs[i]));
}