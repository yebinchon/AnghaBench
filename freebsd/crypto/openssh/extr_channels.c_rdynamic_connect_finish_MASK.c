#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct channel_connect {int dummy; } ;
typedef  int /*<<< orphan*/  cctx ;
struct TYPE_4__ {struct channel_connect connect_ctx; int /*<<< orphan*/  type; int /*<<< orphan*/  host_port; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SSH_CHANNEL_RDYNAMIC_FINISH ; 
 int /*<<< orphan*/  FUNC0 (struct channel_connect*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,TYPE_1__*,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct channel_connect*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct channel_connect*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct ssh *ssh, Channel *c)
{
	struct channel_connect cctx;
	int sock;

	FUNC3(&cctx, 0, sizeof(cctx));
	sock = FUNC2(ssh, c->path, c->host_port, SOCK_STREAM, NULL,
	    NULL, &cctx, NULL, NULL);
	if (sock == -1)
		FUNC0(&cctx);
	else {
		/* similar to SSH_CHANNEL_CONNECTING but we've already sent the open */
		c->type = SSH_CHANNEL_RDYNAMIC_FINISH;
		c->connect_ctx = cctx;
		FUNC1(ssh, c, sock, sock, -1, 0, 1, 0);
	}
	return sock;
}