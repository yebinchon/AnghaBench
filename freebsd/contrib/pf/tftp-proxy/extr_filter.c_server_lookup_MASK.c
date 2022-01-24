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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sockaddr {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  EPROTONOSUPPORT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct sockaddr *client, struct sockaddr *proxy,
    struct sockaddr *server, u_int8_t proto)
{
	if (client->sa_family == AF_INET)
		return (FUNC2(FUNC0(client), FUNC0(proxy),
		    FUNC0(server), proto));

	if (client->sa_family == AF_INET6)
		return (FUNC3(FUNC1(client), FUNC1(proxy),
		    FUNC1(server), proto));

	errno = EPROTONOSUPPORT;
	return (-1);
}