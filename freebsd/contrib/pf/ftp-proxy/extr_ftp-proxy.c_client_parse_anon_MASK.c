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
struct session {int /*<<< orphan*/  client_bufev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 char* linebuf ; 
 scalar_t__ linelen ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

int
FUNC5(struct session *s)
{
	if (FUNC3("USER ftp\r\n", linebuf) != 0 &&
	    FUNC3("USER anonymous\r\n", linebuf) != 0) {
		FUNC2(linebuf, sizeof linebuf,
		    "500 Only anonymous FTP allowed\r\n");
		FUNC1(LOG_DEBUG, "#%d proxy: %s", s->id, linebuf);

		/* Talk back to the client ourself. */
		linelen = FUNC4(linebuf);
		FUNC0(s->client_bufev, linebuf, linelen);

		/* Clear buffer so it's not sent to the server. */
		linebuf[0] = '\0';
		linelen = 0;
	}

	return (1);
}