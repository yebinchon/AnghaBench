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
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct netconfig {int dummy; } ;
struct netbuf {struct sockaddr* buf; } ;
typedef  int /*<<< orphan*/  host ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int NI_MAXHOST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(caddr_t replyp, struct netbuf * raddrp, struct netconfig * nconf)
{
	char host[NI_MAXHOST];
	struct sockaddr *sock = raddrp->buf;
	int error;


	error = FUNC1(sock, sock->sa_len, host, sizeof(host), NULL, 0, 0);
	if (error)
		FUNC3("Cannot resolve address (%s)", FUNC0(error));
	else
		FUNC2("response from: %s\n", host);
	return 0;
}