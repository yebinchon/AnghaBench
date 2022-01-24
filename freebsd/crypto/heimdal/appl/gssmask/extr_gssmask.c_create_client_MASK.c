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
struct sockaddr {int dummy; } ;
struct client {int salen; int /*<<< orphan*/ * sock; int /*<<< orphan*/  servername; int /*<<< orphan*/  sa; int /*<<< orphan*/  moniker; } ;
typedef  int /*<<< orphan*/  hostname ;

/* Variables and functions */
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct client* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 

__attribute__((used)) static struct client *
FUNC9(int fd, int port, const char *moniker)
{
    struct client *c;

    c = FUNC2(1, sizeof(*c));

    if (moniker) {
	c->moniker = FUNC4(moniker);
    } else {
	char hostname[MAXHOSTNAMELEN];
	FUNC5(hostname, sizeof(hostname));
	FUNC0(&c->moniker, "gssmask: %s:%d", hostname, port);
    }

    {
	c->salen = sizeof(c->sa);
	FUNC7(fd, (struct sockaddr *)&c->sa, &c->salen);

	FUNC6((struct sockaddr *)&c->sa, c->salen,
		    c->servername, sizeof(c->servername),
		    NULL, 0, NI_NUMERICHOST);
    }

    c->sock = FUNC8(fd);
    if (c->sock == NULL)
	FUNC3(1, "krb5_storage_from_fd");

    FUNC1(fd);

    return c;
}