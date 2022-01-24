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
struct service_connection {int dummy; } ;
struct service {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_UNIX ; 
 int SOCK_NONBLOCK ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 struct service_connection* FUNC1 (struct service*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct service_connection*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 

int
FUNC4(struct service *service,
    struct service_connection *sconn)
{
	struct service_connection *newsconn;
	int serrno, sock[2];

	if (FUNC3(PF_UNIX, SOCK_STREAM | SOCK_NONBLOCK, 0, sock) < 0)
		return (-1);

	newsconn = FUNC1(service, sock[0],
	    FUNC2(sconn));
	if (newsconn == NULL) {
		serrno = errno;
		FUNC0(sock[0]);
		FUNC0(sock[1]);
		errno = serrno;
		return (-1);
	}

	return (sock[1]);
}