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
struct tac_handle {int fd; char* errmsg; int /*<<< orphan*/  srvr_data; int /*<<< orphan*/  srvr_msg; int /*<<< orphan*/ * srvr_avs; int /*<<< orphan*/ * avs; int /*<<< orphan*/  user_msg; int /*<<< orphan*/  data; int /*<<< orphan*/  rem_addr; int /*<<< orphan*/  port; int /*<<< orphan*/  user; scalar_t__ cur_server; scalar_t__ num_servers; } ;

/* Variables and functions */
 int MAXAVPAIRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct tac_handle *
FUNC4(void)
{
	int i;
	struct tac_handle *h;

	h = (struct tac_handle *)FUNC2(sizeof(struct tac_handle));
	if (h != NULL) {
		h->fd = -1;
		h->num_servers = 0;
		h->cur_server = 0;
		h->errmsg[0] = '\0';
		FUNC0(&h->user);
		FUNC0(&h->port);
		FUNC0(&h->rem_addr);
		FUNC0(&h->data);
		FUNC0(&h->user_msg);
		for (i=0; i<MAXAVPAIRS; i++) {
			FUNC0(&(h->avs[i]));
			FUNC1(&(h->srvr_avs[i]));
		}
		FUNC1(&h->srvr_msg);
		FUNC1(&h->srvr_data);
		FUNC3();
	}
	return h;
}