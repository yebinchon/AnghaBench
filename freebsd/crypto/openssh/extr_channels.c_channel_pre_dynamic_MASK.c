#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u_char ;
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_7__ {int /*<<< orphan*/  type; int /*<<< orphan*/  sock; int /*<<< orphan*/  output; int /*<<< orphan*/  self; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSH_CHANNEL_OPENING ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ssh*,TYPE_1__*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
	const u_char *p;
	u_int have;
	int ret;

	have = FUNC6(c->input);
	FUNC4("channel %d: pre_dynamic: have %d", c->self, have);
	/* sshbuf_dump(c->input, stderr); */
	/* check if the fixed size part of the packet is in buffer. */
	if (have < 3) {
		/* need more */
		FUNC0(c->sock, readset);
		return;
	}
	/* try to guess the protocol */
	p = FUNC7(c->input);
	/* XXX sshbuf_peek_u8? */
	switch (p[0]) {
	case 0x04:
		ret = FUNC2(c, c->input, c->output);
		break;
	case 0x05:
		ret = FUNC3(c, c->input, c->output);
		break;
	default:
		ret = -1;
		break;
	}
	if (ret < 0) {
		FUNC1(ssh, c);
	} else if (ret == 0) {
		FUNC4("channel %d: pre_dynamic: need more", c->self);
		/* need more */
		FUNC0(c->sock, readset);
		if (FUNC6(c->output))
			FUNC0(c->sock, writeset);
	} else {
		/* switch to the next state */
		c->type = SSH_CHANNEL_OPENING;
		FUNC5(ssh, c, "direct-tcpip");
	}
}