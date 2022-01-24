#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  size_t u_int ;
struct permission_set {size_t all_permitted; size_t num_permitted_user; size_t num_permitted_admin; struct permission* permitted_admin; struct permission* permitted_user; } ;
struct ssh_channels {struct permission_set local_perms; } ;
struct ssh {struct ssh_channels* chanctxt; } ;
struct permission {int dummy; } ;
struct channel_connect {int dummy; } ;
typedef  int /*<<< orphan*/  cctx ;
struct TYPE_4__ {struct channel_connect connect_ctx; int /*<<< orphan*/  path; int /*<<< orphan*/  host_port; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_TCP_PACKET_DEFAULT ; 
 int /*<<< orphan*/  CHAN_TCP_WINDOW_DEFAULT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int SSH2_OPEN_ADMINISTRATIVELY_PROHIBITED ; 
 int /*<<< orphan*/  SSH_CHANNEL_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct channel_connect*) ; 
 TYPE_1__* FUNC1 (struct ssh*,char*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct ssh*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,struct channel_connect*,int*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct channel_connect*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct permission*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

Channel *
FUNC7(struct ssh *ssh, const char *host, u_short port,
    char *ctype, char *rname, int *reason, const char **errmsg)
{
	struct ssh_channels *sc = ssh->chanctxt;
	struct permission_set *pset = &sc->local_perms;
	struct channel_connect cctx;
	Channel *c;
	u_int i, permit, permit_adm = 1;
	int sock;
	struct permission *perm;

	permit = pset->all_permitted;
	if (!permit) {
		for (i = 0; i < pset->num_permitted_user; i++) {
			perm = &pset->permitted_user[i];
			if (FUNC5(perm, host, port)) {
				permit = 1;
				break;
			}
		}
	}

	if (pset->num_permitted_admin > 0) {
		permit_adm = 0;
		for (i = 0; i < pset->num_permitted_admin; i++) {
			perm = &pset->permitted_admin[i];
			if (FUNC5(perm, host, port)) {
				permit_adm = 1;
				break;
			}
		}
	}

	if (!permit || !permit_adm) {
		FUNC3("Received request to connect to host %.100s port %d, "
		    "but the request was denied.", host, port);
		if (reason != NULL)
			*reason = SSH2_OPEN_ADMINISTRATIVELY_PROHIBITED;
		return NULL;
	}

	FUNC4(&cctx, 0, sizeof(cctx));
	sock = FUNC2(ssh, host, port, SOCK_STREAM, ctype, rname,
	    &cctx, reason, errmsg);
	if (sock == -1) {
		FUNC0(&cctx);
		return NULL;
	}

	c = FUNC1(ssh, ctype, SSH_CHANNEL_CONNECTING, sock, sock, -1,
	    CHAN_TCP_WINDOW_DEFAULT, CHAN_TCP_PACKET_DEFAULT, 0, rname, 1);
	c->host_port = port;
	c->path = FUNC6(host);
	c->connect_ctx = cctx;

	return c;
}