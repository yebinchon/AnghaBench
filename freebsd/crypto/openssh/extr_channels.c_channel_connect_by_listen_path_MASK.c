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
typedef  size_t u_int ;
struct permission_set {size_t num_permitted_user; struct permission* permitted_user; } ;
struct ssh_channels {struct permission_set local_perms; } ;
struct ssh {struct ssh_channels* chanctxt; } ;
struct permission {int /*<<< orphan*/  port_to_connect; int /*<<< orphan*/  host_to_connect; } ;
typedef  int /*<<< orphan*/  Channel ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (struct permission*,char const*) ; 

Channel *
FUNC3(struct ssh *ssh, const char *path,
    char *ctype, char *rname)
{
	struct ssh_channels *sc = ssh->chanctxt;
	struct permission_set *pset = &sc->local_perms;
	u_int i;
	struct permission *perm;

	for (i = 0; i < pset->num_permitted_user; i++) {
		perm = &pset->permitted_user[i];
		if (FUNC2(perm, path)) {
			return FUNC0(ssh,
			    perm->host_to_connect, perm->port_to_connect,
			    ctype, rname);
		}
	}
	FUNC1("WARNING: Server requests forwarding for unknown path %.100s",
	    path);
	return NULL;
}