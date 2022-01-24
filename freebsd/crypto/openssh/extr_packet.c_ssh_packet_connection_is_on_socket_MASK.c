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
typedef  int /*<<< orphan*/  to ;
struct ssh {struct session_state* state; } ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr {int dummy; } ;
struct session_state {int connection_in; int connection_out; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC1 (struct sockaddr_storage*,struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct ssh *ssh)
{
	struct session_state *state;
	struct sockaddr_storage from, to;
	socklen_t fromlen, tolen;

	if (ssh == NULL || ssh->state == NULL)
		return 0;

	state = ssh->state;
	if (state->connection_in == -1 || state->connection_out == -1)
		return 0;
	/* filedescriptors in and out are the same, so it's a socket */
	if (state->connection_in == state->connection_out)
		return 1;
	fromlen = sizeof(from);
	FUNC2(&from, 0, sizeof(from));
	if (FUNC0(state->connection_in, (struct sockaddr *)&from,
	    &fromlen) < 0)
		return 0;
	tolen = sizeof(to);
	FUNC2(&to, 0, sizeof(to));
	if (FUNC0(state->connection_out, (struct sockaddr *)&to,
	    &tolen) < 0)
		return 0;
	if (fromlen != tolen || FUNC1(&from, &to, fromlen) != 0)
		return 0;
	if (from.ss_family != AF_INET && from.ss_family != AF_INET6)
		return 0;
	return 1;
}