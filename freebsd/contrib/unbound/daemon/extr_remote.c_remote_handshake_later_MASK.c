#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rc_state {scalar_t__ shake_state; TYPE_2__* c; } ;
struct daemon_remote {int dummy; } ;
struct comm_point {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__ repinfo; } ;

/* Variables and functions */
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct daemon_remote*,struct rc_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct comm_point*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ rc_hs_read ; 
 scalar_t__ rc_hs_write ; 

__attribute__((used)) static int
FUNC5(struct daemon_remote* rc, struct rc_state* s,
	struct comm_point* c, int r, int r2)
{
	if(r2 == SSL_ERROR_WANT_READ) {
		if(s->shake_state == rc_hs_read) {
			/* try again later */
			return 0;
		}
		s->shake_state = rc_hs_read;
		FUNC1(c, 1, 0);
		return 0;
	} else if(r2 == SSL_ERROR_WANT_WRITE) {
		if(s->shake_state == rc_hs_write) {
			/* try again later */
			return 0;
		}
		s->shake_state = rc_hs_write;
		FUNC1(c, 0, 1);
		return 0;
	} else {
		if(r == 0)
			FUNC4("remote control connection closed prematurely");
		FUNC2(1, "failed connection from",
			&s->c->repinfo.addr, s->c->repinfo.addrlen);
		FUNC3("remote control failed ssl");
		FUNC0(rc, s);
	}
	return 0;
}