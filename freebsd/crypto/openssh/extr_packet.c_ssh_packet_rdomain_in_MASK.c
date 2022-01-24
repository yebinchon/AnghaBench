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
struct ssh {char const* rdomain_in; TYPE_1__* state; } ;
struct TYPE_2__ {int /*<<< orphan*/  connection_in; } ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*) ; 

const char *
FUNC2(struct ssh *ssh)
{
	if (ssh->rdomain_in != NULL)
		return ssh->rdomain_in;
	if (!FUNC1(ssh))
		return NULL;
	ssh->rdomain_in = FUNC0(ssh->state->connection_in);
	return ssh->rdomain_in;
}