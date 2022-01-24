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
typedef  int /*<<< orphan*/  conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char const*,char*) ; 

__attribute__((used)) static int
FUNC5(conn_t *conn, const char *hdr, const char *usr, const char *pwd)
{
	char *upw, *auth;
	int r;

	FUNC0("basic: usr: [%s]\n", usr);
	FUNC0("basic: pwd: [%s]\n", pwd);
	if (FUNC1(&upw, "%s:%s", usr, pwd) == -1)
		return (-1);
	auth = FUNC3(upw);
	FUNC2(upw);
	if (auth == NULL)
		return (-1);
	r = FUNC4(conn, "%s: Basic %s", hdr, auth);
	FUNC2(auth);
	return (r);
}