#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_3__ {int /*<<< orphan*/ * body; } ;
struct TYPE_4__ {TYPE_1__ u; int /*<<< orphan*/  length; } ;
struct tac_handle {scalar_t__ srvr_pos; TYPE_2__ response; } ;
struct srvr_str {size_t len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tac_handle*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct tac_handle *h, const char *field,
	     struct srvr_str *ss, size_t len)
{
	if (h->srvr_pos + len > FUNC1(h->response.length)) {
		FUNC0(h, "Invalid length field in %s response from server "
		       "(%lu > %lu)", field, (u_long)(h->srvr_pos + len),
		       (u_long)FUNC1(h->response.length));
		return -1;
	}
	ss->data = len != 0 ? h->response.u.body + h->srvr_pos : NULL;
	ss->len = len;
	h->srvr_pos += len;
	return 0;
}