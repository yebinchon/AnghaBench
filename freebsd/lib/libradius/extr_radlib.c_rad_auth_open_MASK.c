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
struct rad_handle {int fd; char* errmsg; int /*<<< orphan*/  bindto; scalar_t__ eap_msg; scalar_t__ out_created; int /*<<< orphan*/  type; scalar_t__ authentic_pos; scalar_t__ chap_pass; scalar_t__ pass_pos; scalar_t__ pass_len; int /*<<< orphan*/  pass; int /*<<< orphan*/  ident; scalar_t__ num_servers; } ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  RADIUS_AUTH ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct rad_handle *
FUNC4(void)
{
	struct rad_handle *h;

	h = (struct rad_handle *)FUNC0(sizeof(struct rad_handle));
	if (h != NULL) {
		FUNC3();
		h->fd = -1;
		h->num_servers = 0;
		h->ident = FUNC2();
		h->errmsg[0] = '\0';
		FUNC1(h->pass, 0, sizeof h->pass);
		h->pass_len = 0;
		h->pass_pos = 0;
		h->chap_pass = 0;
		h->authentic_pos = 0;
		h->type = RADIUS_AUTH;
		h->out_created = 0;
		h->eap_msg = 0;
		h->bindto = INADDR_ANY;
	}
	return h;
}