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
struct session {int sbuf_valid; int /*<<< orphan*/  id; int /*<<< orphan*/  client_bufev; scalar_t__ sbuf; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 size_t FUNC0 (struct bufferevent*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct session*) ; 
 int FUNC4 (scalar_t__,size_t*) ; 
 int /*<<< orphan*/  linebuf ; 
 int /*<<< orphan*/  linelen ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct session*) ; 
 int /*<<< orphan*/  timeout ; 

void
FUNC7(struct bufferevent *bufev, void *arg)
{
	struct session	*s = arg;
	size_t		 buf_avail, srvread;
	int		 n;

	FUNC1(bufev, timeout, 0);

	do {
		buf_avail = sizeof s->sbuf - s->sbuf_valid;
		srvread = FUNC0(bufev, s->sbuf + s->sbuf_valid,
		    buf_avail);
		s->sbuf_valid += srvread;

		while ((n = FUNC4(s->sbuf, &s->sbuf_valid)) > 0) {
			FUNC5(LOG_DEBUG, "#%d server: %s", s->id, linebuf);
			if (!FUNC6(s)) {
				FUNC3(s);
				return;
			}
			FUNC2(s->client_bufev, linebuf, linelen);
		}

		if (n == -1) {
			FUNC5(LOG_ERR, "#%d server reply too long or not"
			    " clean", s->id);
			FUNC3(s);
			return;
		}
	} while (srvread == buf_avail);
}