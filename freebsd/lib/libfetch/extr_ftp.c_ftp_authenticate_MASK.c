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
struct url {char* user; char* pwd; int /*<<< orphan*/  port; int /*<<< orphan*/  host; int /*<<< orphan*/  scheme; } ;
typedef  int /*<<< orphan*/  pbuf ;
typedef  int /*<<< orphan*/  conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FTP_ANONYMOUS_USER ; 
 int FTP_NEED_PASSWORD ; 
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 int MAXLOGNAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct url*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 char* FUNC6 () ; 
 int FUNC7 (char*,int,char*,char const*) ; 

__attribute__((used)) static int
FUNC8(conn_t *conn, struct url *url, struct url *purl)
{
	const char *user, *pwd, *logname;
	char pbuf[MAXHOSTNAMELEN + MAXLOGNAME + 1];
	int e, len;

	/* XXX FTP_AUTH, and maybe .netrc */

	/* send user name and password */
	if (url->user[0] == '\0')
		FUNC2(url);
	user = url->user;
	if (*user == '\0')
		if ((user = FUNC4("FTP_LOGIN")) != NULL)
			FUNC0("FTP_LOGIN=%s\n", user);
	if (user == NULL || *user == '\0')
		user = FTP_ANONYMOUS_USER;
	if (purl && url->port == FUNC1(url->scheme))
		e = FUNC3(conn, "USER %s@%s", user, url->host);
	else if (purl)
		e = FUNC3(conn, "USER %s@%s@%d", user, url->host, url->port);
	else
		e = FUNC3(conn, "USER %s", user);

	/* did the server request a password? */
	if (e == FTP_NEED_PASSWORD) {
		pwd = url->pwd;
		if (*pwd == '\0')
			if ((pwd = FUNC4("FTP_PASSWORD")) != NULL)
				FUNC0("FTP_PASSWORD=%s\n", pwd);
		if (pwd == NULL || *pwd == '\0') {
			if ((logname = FUNC6()) == NULL)
				logname = FTP_ANONYMOUS_USER;
			if ((len = FUNC7(pbuf, MAXLOGNAME + 1, "%s@", logname)) < 0)
				len = 0;
			else if (len > MAXLOGNAME)
				len = MAXLOGNAME;
			FUNC5(pbuf + len, sizeof(pbuf) - len);
			pwd = pbuf;
		}
		e = FUNC3(conn, "PASS %s", pwd);
	}

	return (e);
}