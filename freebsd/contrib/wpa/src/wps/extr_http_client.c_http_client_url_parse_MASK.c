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
struct sockaddr_in {void* sin_port; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,char*,char*) ; 

char * FUNC8(const char *url, struct sockaddr_in *dst,
			     char **ret_path)
{
	char *u, *addr, *port, *path;

	u = FUNC6(url);
	if (u == NULL)
		return NULL;

	FUNC4(dst, 0, sizeof(*dst));
	dst->sin_family = AF_INET;
	addr = u + 7;
	path = FUNC5(addr, '/');
	port = FUNC5(addr, ':');
	if (path == NULL) {
		path = "/";
	} else {
		*path = '\0'; /* temporary nul termination for address */
		if (port > path)
			port = NULL;
	}
	if (port)
		*port++ = '\0';

	if (FUNC2(addr, &dst->sin_addr) == 0) {
		/* TODO: name lookup */
		FUNC7(MSG_DEBUG, "HTTP: Unsupported address in URL '%s' "
			   "(addr='%s' port='%s')",
			   url, addr, port);
		FUNC3(u);
		return NULL;
	}

	if (port)
		dst->sin_port = FUNC1(FUNC0(port));
	else
		dst->sin_port = FUNC1(80);

	if (*path == '\0') {
		/* remove temporary nul termination for address */
		*path = '/';
	}

	*ret_path = path;

	return u;
}