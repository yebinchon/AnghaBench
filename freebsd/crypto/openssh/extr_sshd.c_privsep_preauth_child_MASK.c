#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  scalar_t__ gid_t ;
struct TYPE_5__ {scalar_t__ gss_authentication; } ;
struct TYPE_4__ {scalar_t__ pw_gid; scalar_t__ pw_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  _PATH_PRIVSEP_CHROOT_DIR ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_3__ options ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ privsep_chroot ; 
 TYPE_1__* privsep_pw ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(void)
{
	gid_t gidset[1];

	/* Enable challenge-response authentication for privilege separation */
	FUNC6();

#ifdef GSSAPI
	/* Cache supported mechanism OIDs for later use */
	if (options.gss_authentication)
		ssh_gssapi_prepare_supported_oids();
#endif

	FUNC7();

	/* Demote the private keys to public keys. */
	FUNC3();

	/* Demote the child */
	if (privsep_chroot) {
		/* Change our root directory */
		if (FUNC1(_PATH_PRIVSEP_CHROOT_DIR) == -1)
			FUNC4("chroot(\"%s\"): %s", _PATH_PRIVSEP_CHROOT_DIR,
			    FUNC10(errno));
		if (FUNC0("/") == -1)
			FUNC4("chdir(\"/\"): %s", FUNC10(errno));

		/* Drop our privileges */
		FUNC2("privsep user:group %u:%u", (u_int)privsep_pw->pw_uid,
		    (u_int)privsep_pw->pw_gid);
		gidset[0] = privsep_pw->pw_gid;
		if (FUNC8(1, gidset) < 0)
			FUNC4("setgroups: %.100s", FUNC10(errno));
		FUNC5(privsep_pw);
	}
}