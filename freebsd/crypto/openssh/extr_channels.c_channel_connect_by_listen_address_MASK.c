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
typedef  int /*<<< orphan*/  u_short ;
typedef  size_t u_int ;
struct permission_set {size_t num_permitted_user; struct permission* permitted_user; } ;
struct ssh_channels {struct permission_set local_perms; } ;
struct ssh {struct ssh_channels* chanctxt; } ;
struct permission {scalar_t__ port_to_connect; int /*<<< orphan*/  host_to_connect; int /*<<< orphan*/ * downstream; } ;
typedef  int /*<<< orphan*/  Channel ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct ssh*,int /*<<< orphan*/ ,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct permission*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct ssh*,char*,char*) ; 

Channel *
FUNC4(struct ssh *ssh, const char *listen_host,
    u_short listen_port, char *ctype, char *rname)
{
	struct ssh_channels *sc = ssh->chanctxt;
	struct permission_set *pset = &sc->local_perms;
	u_int i;
	struct permission *perm;

	for (i = 0; i < pset->num_permitted_user; i++) {
		perm = &pset->permitted_user[i];
		if (FUNC2(perm,
		    listen_host, listen_port, 1)) {
			if (perm->downstream)
				return perm->downstream;
			if (perm->port_to_connect == 0)
				return FUNC3(ssh,
				    ctype, rname);
			return FUNC0(ssh,
			    perm->host_to_connect, perm->port_to_connect,
			    ctype, rname);
		}
	}
	FUNC1("WARNING: Server requests forwarding for unknown listen_port %d",
	    listen_port);
	return NULL;
}