#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
struct url {int /*<<< orphan*/  scheme; int /*<<< orphan*/  port; int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  http_headerbuf_t ;
typedef  scalar_t__ hdr_t ;
struct TYPE_10__ {int /*<<< orphan*/  sd; int /*<<< orphan*/  err; } ;
typedef  TYPE_1__ conn_t ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int AF_UNSPEC ; 
 int FUNC0 (char) ; 
 int EAUTH ; 
 scalar_t__ HTTP_OK ; 
 int /*<<< orphan*/  HTTP_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SCHEME_HTTPS ; 
 int /*<<< orphan*/  TCP_NOPUSH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,struct url*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ hdr_end ; 
#define  hdr_error 129 
#define  hdr_syserror 128 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static conn_t *
FUNC14(struct url *URL, struct url *purl, const char *flags)
{
	struct url *curl;
	conn_t *conn;
	hdr_t h;
	http_headerbuf_t headerbuf;
	const char *p;
	int verbose;
	int af, val;
	int serrno;

#ifdef INET6
	af = AF_UNSPEC;
#else
	af = AF_INET;
#endif

	verbose = FUNC0('v');
	if (FUNC0('4'))
		af = AF_INET;
#ifdef INET6
	else if (CHECK_FLAG('6'))
		af = AF_INET6;
#endif

	curl = (purl != NULL) ? purl : URL;

	if ((conn = FUNC3(curl->host, curl->port, af, verbose)) == NULL)
		/* fetch_connect() has already set an error code */
		return (NULL);
	FUNC11(&headerbuf);
	if (FUNC13(URL->scheme, SCHEME_HTTPS) == 0 && purl) {
		FUNC7(conn, "CONNECT %s:%d HTTP/1.1",
		    URL->host, URL->port);
		FUNC7(conn, "Host: %s:%d",
		    URL->host, URL->port);
		FUNC7(conn, "");
		if (FUNC8(conn) != HTTP_OK) {
			FUNC10(conn->err);
			goto ouch;
		}
		/* Read and discard the rest of the proxy response */
		if (FUNC4(conn) < 0) {
			FUNC6();
			goto ouch;
		}
		do {
			switch ((h = FUNC9(conn, &headerbuf, &p))) {
			case hdr_syserror:
				FUNC6();
				goto ouch;
			case hdr_error:
				FUNC10(HTTP_PROTOCOL_ERROR);
				goto ouch;
			default:
				/* ignore */ ;
			}
		} while (h > hdr_end);
	}
	if (FUNC13(URL->scheme, SCHEME_HTTPS) == 0 &&
	    FUNC5(conn, URL, verbose) == -1) {
		/* grrr */
		errno = EAUTH;
		FUNC6();
		goto ouch;
	}

	val = 1;
	FUNC12(conn->sd, IPPROTO_TCP, TCP_NOPUSH, &val, sizeof(val));

	FUNC1(&headerbuf);
	return (conn);
ouch:
	serrno = errno;
	FUNC1(&headerbuf);
	FUNC2(conn);
	errno = serrno;
	return (NULL);
}