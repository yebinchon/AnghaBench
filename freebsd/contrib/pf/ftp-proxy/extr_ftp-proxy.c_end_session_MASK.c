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
struct session {int client_fd; int server_fd; int /*<<< orphan*/  id; TYPE_1__* server_bufev; TYPE_1__* client_bufev; } ;
struct TYPE_2__ {int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  entry ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct session*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  session_count ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void
FUNC10(struct session *s)
{
	int serr;

	FUNC7(LOG_INFO, "#%d ending session", s->id);

	/* Flush output buffers. */
	if (s->client_bufev && s->client_fd != -1)
		FUNC5(s->client_bufev->output, s->client_fd);
	if (s->server_bufev && s->server_fd != -1)
		FUNC5(s->server_bufev->output, s->server_fd);

	if (s->client_fd != -1)
		FUNC2(s->client_fd);
	if (s->server_fd != -1)
		FUNC2(s->server_fd);

	if (s->client_bufev)
		FUNC1(s->client_bufev);
	if (s->server_bufev)
		FUNC1(s->server_bufev);

	/* Remove rulesets by commiting empty ones. */
	serr = 0;
	if (FUNC8(s->id) == -1)
		serr = errno;
	else if (FUNC3() == -1) {
		serr = errno;
		FUNC4();
	}
	if (serr)
		FUNC7(LOG_ERR, "#%d pf rule removal failed: %s", s->id,
		    FUNC9(serr));

	FUNC0(s, entry);
	FUNC6(s);
	session_count--;
}