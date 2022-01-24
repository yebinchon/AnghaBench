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
struct TYPE_2__ {int /*<<< orphan*/  length; } ;
struct tac_handle {int srvr_pos; TYPE_1__ response; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tac_handle*,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct tac_handle *h)
{
	int len;

	len = FUNC1(h->response.length);

	if (h->srvr_pos != len) {
		FUNC0(h, "Invalid length field in response "
		       "from server: end expected at %u, response length %u",
		       h->srvr_pos, len);
		return -1;
	}
	return 0;
}