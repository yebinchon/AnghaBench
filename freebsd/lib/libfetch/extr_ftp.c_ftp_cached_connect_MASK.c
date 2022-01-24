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
struct url {int /*<<< orphan*/  scheme; scalar_t__ port; } ;
typedef  int /*<<< orphan*/  conn_t ;

/* Variables and functions */
 int FTP_OK ; 
 int FTP_SYNTAX_ERROR ; 
 int /*<<< orphan*/ * cached_connection ; 
 int /*<<< orphan*/  cached_host ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct url*,struct url*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct url*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct url*,int) ; 

__attribute__((used)) static conn_t *
FUNC7(struct url *url, struct url *purl, const char *flags)
{
	conn_t *conn;
	int e;

	/* set default port */
	if (!url->port)
		url->port = FUNC0(url->scheme);

	/* try to use previously cached connection */
	if (FUNC5(url)) {
		e = FUNC2(cached_connection, "NOOP");
		if (e == FTP_OK || e == FTP_SYNTAX_ERROR)
			return (FUNC1(cached_connection));
	}

	/* connect to server */
	if ((conn = FUNC3(url, purl, flags)) == NULL)
		return (NULL);
	if (cached_connection)
		FUNC4(cached_connection);
	cached_connection = FUNC1(conn);
	FUNC6(&cached_host, url, sizeof(*url));
	return (conn);
}