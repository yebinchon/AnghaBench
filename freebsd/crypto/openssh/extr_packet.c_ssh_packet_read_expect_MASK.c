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
typedef  scalar_t__ u_int ;
typedef  scalar_t__ u_char ;
struct ssh {int dummy; } ;

/* Variables and functions */
 int SSH_ERR_PROTOCOL_ERROR ; 
 int FUNC0 (struct ssh*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ssh*,char*,scalar_t__,scalar_t__) ; 

int
FUNC2(struct ssh *ssh, u_int expected_type)
{
	int r;
	u_char type;

	if ((r = FUNC0(ssh, &type, NULL)) != 0)
		return r;
	if (type != expected_type) {
		if ((r = FUNC1(ssh,
		    "Protocol error: expected packet type %d, got %d",
		    expected_type, type)) != 0)
			return r;
		return SSH_ERR_PROTOCOL_ERROR;
	}
	return 0;
}