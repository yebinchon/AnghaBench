#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_3__ {int sock; int rfd; int wfd; int efd; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssh*,int*) ; 

__attribute__((used)) static void
FUNC1(struct ssh *ssh, Channel *c)
{
	int sock = c->sock, rfd = c->rfd, wfd = c->wfd, efd = c->efd;

	FUNC0(ssh, &c->sock);
	if (rfd != sock)
		FUNC0(ssh, &c->rfd);
	if (wfd != sock && wfd != rfd)
		FUNC0(ssh, &c->wfd);
	if (efd != sock && efd != rfd && efd != wfd)
		FUNC0(ssh, &c->efd);
}