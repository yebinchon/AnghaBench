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
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {scalar_t__ connection_in; scalar_t__ connection_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void
FUNC1(struct ssh *ssh)
{
	/* Set the socket into non-blocking mode. */
	FUNC0(ssh->state->connection_in);

	if (ssh->state->connection_out != ssh->state->connection_in)
		FUNC0(ssh->state->connection_out);
}