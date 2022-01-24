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
typedef  scalar_t__ uid_t ;
struct passwd {scalar_t__ pw_gid; scalar_t__ pw_uid; int /*<<< orphan*/  pw_dir; } ;
struct jail {char* hostname; int /*<<< orphan*/ * ip6; scalar_t__ ip6s; int /*<<< orphan*/ * ip4; scalar_t__ ip4s; int /*<<< orphan*/ * jailname; int /*<<< orphan*/  path; int /*<<< orphan*/  version; } ;
struct hast_resource {char* hr_name; scalar_t__ hr_role; int /*<<< orphan*/  hr_ggatefd; int /*<<< orphan*/  hr_localfd; } ;
typedef  int /*<<< orphan*/  jailst ;
typedef  int /*<<< orphan*/  jailhost ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FLOCK ; 
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  CAP_PREAD ; 
 int /*<<< orphan*/  CAP_PWRITE ; 
#define  DIOCGDELETE 133 
#define  DIOCGFLUSH 132 
 scalar_t__ ENOENT ; 
#define  G_GATE_CMD_DESTROY 131 
#define  G_GATE_CMD_DONE 130 
#define  G_GATE_CMD_MODIFY 129 
#define  G_GATE_CMD_START 128 
 scalar_t__ HAST_ROLE_PRIMARY ; 
 scalar_t__ HAST_ROLE_SECONDARY ; 
 int /*<<< orphan*/  HAST_USER ; 
 int /*<<< orphan*/  JAIL_API_VERSION ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct jail*,int) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC9 (int,scalar_t__*) ; 
 struct passwd* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC12 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC13 (struct jail*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC19 (scalar_t__) ; 
 int FUNC20 (scalar_t__) ; 
 int FUNC21 (int,scalar_t__*) ; 
 int FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*,...) ; 

int
FUNC24(const struct hast_resource *res)
{
	char jailhost[sizeof(res->hr_name) * 2];
	struct jail jailst;
	struct passwd *pw;
	uid_t ruid, euid, suid;
	gid_t rgid, egid, sgid;
	gid_t gidset[1];
	bool capsicum, jailed;

	/*
	 * According to getpwnam(3) we have to clear errno before calling the
	 * function to be able to distinguish between an error and missing
	 * entry (with is not treated as error by getpwnam(3)).
	 */
	errno = 0;
	pw = FUNC10(HAST_USER);
	if (pw == NULL) {
		if (errno != 0) {
			FUNC17(LOG_ERR,
			    "Unable to find info about '%s' user", HAST_USER);
			return (-1);
		} else {
			FUNC18("'%s' user doesn't exist.", HAST_USER);
			errno = ENOENT;
			return (-1);
		}
	}

	FUNC2(&jailst, sizeof(jailst));
	jailst.version = JAIL_API_VERSION;
	jailst.path = pw->pw_dir;
	if (res == NULL) {
		(void)FUNC23(jailhost, sizeof(jailhost), "hastctl");
	} else {
		(void)FUNC23(jailhost, sizeof(jailhost), "hastd: %s (%s)",
		    res->hr_name, FUNC19(res->hr_role));
	}
	jailst.hostname = jailhost;
	jailst.jailname = NULL;
	jailst.ip4s = 0;
	jailst.ip4 = NULL;
	jailst.ip6s = 0;
	jailst.ip6 = NULL;
	if (FUNC13(&jailst) >= 0) {
		jailed = true;
	} else {
		jailed = false;
		FUNC17(LOG_WARNING,
		    "Unable to jail to directory to %s", pw->pw_dir);
		if (FUNC8(pw->pw_dir) == -1) {
			FUNC17(LOG_ERR,
			    "Unable to change root directory to %s",
			    pw->pw_dir);
			return (-1);
		}
	}
	FUNC1(FUNC7("/") == 0);
	gidset[0] = pw->pw_gid;
	if (FUNC21(1, gidset) == -1) {
		FUNC17(LOG_ERR, "Unable to set groups to gid %u",
		    (unsigned int)pw->pw_gid);
		return (-1);
	}
	if (FUNC20(pw->pw_gid) == -1) {
		FUNC17(LOG_ERR, "Unable to set gid to %u",
		    (unsigned int)pw->pw_gid);
		return (-1);
	}
	if (FUNC22(pw->pw_uid) == -1) {
		FUNC17(LOG_ERR, "Unable to set uid to %u",
		    (unsigned int)pw->pw_uid);
		return (-1);
	}

#ifdef HAVE_CAPSICUM
	capsicum = (cap_enter() == 0);
	if (!capsicum) {
		pjdlog_common(LOG_DEBUG, 1, errno,
		    "Unable to sandbox using capsicum");
	} else if (res != NULL) {
		cap_rights_t rights;
		static const unsigned long geomcmds[] = {
		    DIOCGDELETE,
		    DIOCGFLUSH
		};

		PJDLOG_ASSERT(res->hr_role == HAST_ROLE_PRIMARY ||
		    res->hr_role == HAST_ROLE_SECONDARY);

		cap_rights_init(&rights, CAP_FLOCK, CAP_IOCTL, CAP_PREAD,
		    CAP_PWRITE);
		if (cap_rights_limit(res->hr_localfd, &rights) == -1) {
			pjdlog_errno(LOG_ERR,
			    "Unable to limit capability rights on local descriptor");
		}
		if (cap_ioctls_limit(res->hr_localfd, geomcmds,
		    nitems(geomcmds)) == -1) {
			pjdlog_errno(LOG_ERR,
			    "Unable to limit allowed GEOM ioctls");
		}

		if (res->hr_role == HAST_ROLE_PRIMARY) {
			static const unsigned long ggatecmds[] = {
			    G_GATE_CMD_MODIFY,
			    G_GATE_CMD_START,
			    G_GATE_CMD_DONE,
			    G_GATE_CMD_DESTROY
			};

			cap_rights_init(&rights, CAP_IOCTL);
			if (cap_rights_limit(res->hr_ggatefd, &rights) == -1) {
				pjdlog_errno(LOG_ERR,
				    "Unable to limit capability rights to CAP_IOCTL on ggate descriptor");
			}
			if (cap_ioctls_limit(res->hr_ggatefd, ggatecmds,
			    nitems(ggatecmds)) == -1) {
				pjdlog_errno(LOG_ERR,
				    "Unable to limit allowed ggate ioctls");
			}
		}
	}
#else
	capsicum = false;
#endif

	/*
	 * Better be sure that everything succeeded.
	 */
	FUNC1(FUNC12(&ruid, &euid, &suid) == 0);
	FUNC1(ruid == pw->pw_uid);
	FUNC1(euid == pw->pw_uid);
	FUNC1(suid == pw->pw_uid);
	FUNC1(FUNC11(&rgid, &egid, &sgid) == 0);
	FUNC1(rgid == pw->pw_gid);
	FUNC1(egid == pw->pw_gid);
	FUNC1(sgid == pw->pw_gid);
	FUNC1(FUNC9(0, NULL) == 1);
	FUNC1(FUNC9(1, gidset) == 1);
	FUNC1(gidset[0] == pw->pw_gid);

	FUNC16(1,
	    "Privileges successfully dropped using %s%s+setgid+setuid.",
	    capsicum ? "capsicum+" : "", jailed ? "jail" : "chroot");

	return (0);
}