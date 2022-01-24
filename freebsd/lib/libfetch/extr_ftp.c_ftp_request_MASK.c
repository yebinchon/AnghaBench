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
struct url_stat {int dummy; } ;
struct url {char const* scheme; int /*<<< orphan*/  offset; int /*<<< orphan*/  doc; } ;
struct TYPE_7__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ conn_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FETCH_PROTO ; 
 scalar_t__ FETCH_UNAVAIL ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 char* SCHEME_HTTP ; 
 char* SCHEME_HTTPS ; 
 int /*<<< orphan*/  FUNC0 (struct url*) ; 
 scalar_t__ fetchLastErrCode ; 
 TYPE_1__* FUNC1 (struct url*,struct url*,char const*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,struct url_stat*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (struct url*,char*,struct url_stat*,struct url*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

FILE *
FUNC8(struct url *url, const char *op, struct url_stat *us,
    struct url *purl, const char *flags)
{
	conn_t *conn;
	int oflag;

	/* check if we should use HTTP instead */
	if (purl && (FUNC7(purl->scheme, SCHEME_HTTP) == 0 ||
	    FUNC7(purl->scheme, SCHEME_HTTPS) == 0)) {
		if (FUNC7(op, "STAT") == 0)
			return (FUNC6(url, "HEAD", us, purl, flags));
		else if (FUNC7(op, "RETR") == 0)
			return (FUNC6(url, "GET", us, purl, flags));
		/*
		 * Our HTTP code doesn't support PUT requests yet, so try
		 * a direct connection.
		 */
	}

	/* connect to server */
	conn = FUNC1(url, purl, flags);
	if (purl)
		FUNC0(purl);
	if (conn == NULL)
		return (NULL);

	/* change directory */
	if (FUNC2(conn, url->doc) == -1)
		goto errsock;

	/* stat file */
	if (us && FUNC4(conn, url->doc, us) == -1
	    && fetchLastErrCode != FETCH_PROTO
	    && fetchLastErrCode != FETCH_UNAVAIL)
		goto errsock;

	/* just a stat */
	if (FUNC7(op, "STAT") == 0) {
		--conn->ref;
		FUNC3(conn);
		return (FILE *)1; /* bogus return value */
	}
	if (FUNC7(op, "STOR") == 0 || FUNC7(op, "APPE") == 0)
		oflag = O_WRONLY;
	else
		oflag = O_RDONLY;

	/* initiate the transfer */
	return (FUNC5(conn, op, url->doc, oflag, url->offset, flags));

errsock:
	FUNC3(conn);
	return (NULL);
}