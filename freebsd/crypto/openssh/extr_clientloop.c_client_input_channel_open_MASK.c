#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  void* u_int ;
struct ssh {int dummy; } ;
struct TYPE_6__ {scalar_t__ type; int remote_id; int have_remote_id; int self; int local_window; int local_maxpacket; void* remote_maxpacket; void* remote_window; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_OPEN_CONFIRMATION ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_OPEN_FAILURE ; 
 int SSH2_OPEN_ADMINISTRATIVELY_PROHIBITED ; 
 scalar_t__ SSH_CHANNEL_CONNECTING ; 
 scalar_t__ SSH_CHANNEL_MUX_CLIENT ; 
 TYPE_1__* FUNC0 (struct ssh*,char*,int) ; 
 TYPE_1__* FUNC1 (struct ssh*,char*,int) ; 
 TYPE_1__* FUNC2 (struct ssh*,char*,int,void*,void*) ; 
 TYPE_1__* FUNC3 (struct ssh*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* FUNC7 () ; 
 char* FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char*,char*) ; 

__attribute__((used)) static int
FUNC14(int type, u_int32_t seq, struct ssh *ssh)
{
	Channel *c = NULL;
	char *ctype;
	int rchan;
	u_int rmaxpack, rwindow, len;

	ctype = FUNC8(&len);
	rchan = FUNC7();
	rwindow = FUNC7();
	rmaxpack = FUNC7();

	FUNC4("client_input_channel_open: ctype %s rchan %d win %d max %d",
	    ctype, rchan, rwindow, rmaxpack);

	if (FUNC13(ctype, "forwarded-tcpip") == 0) {
		c = FUNC2(ssh, ctype, rchan, rwindow,
		    rmaxpack);
	} else if (FUNC13(ctype, "forwarded-streamlocal@openssh.com") == 0) {
		c = FUNC1(ssh, ctype, rchan);
	} else if (FUNC13(ctype, "x11") == 0) {
		c = FUNC3(ssh, ctype, rchan);
	} else if (FUNC13(ctype, "auth-agent@openssh.com") == 0) {
		c = FUNC0(ssh, ctype, rchan);
	}
	if (c != NULL && c->type == SSH_CHANNEL_MUX_CLIENT) {
		FUNC5("proxied to downstream: %s", ctype);
	} else if (c != NULL) {
		FUNC4("confirm %s", ctype);
		c->remote_id = rchan;
		c->have_remote_id = 1;
		c->remote_window = rwindow;
		c->remote_maxpacket = rmaxpack;
		if (c->type != SSH_CHANNEL_CONNECTING) {
			FUNC12(SSH2_MSG_CHANNEL_OPEN_CONFIRMATION);
			FUNC10(c->remote_id);
			FUNC10(c->self);
			FUNC10(c->local_window);
			FUNC10(c->local_maxpacket);
			FUNC11();
		}
	} else {
		FUNC4("failure %s", ctype);
		FUNC12(SSH2_MSG_CHANNEL_OPEN_FAILURE);
		FUNC10(rchan);
		FUNC10(SSH2_OPEN_ADMINISTRATIVELY_PROHIBITED);
		FUNC9("open failed");
		FUNC9("");
		FUNC11();
	}
	FUNC6(ctype);
	return 0;
}