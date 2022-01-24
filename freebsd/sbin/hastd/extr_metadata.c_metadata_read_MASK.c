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
struct nv {int dummy; } ;
struct hast_resource {int hr_localfd; char* hr_name; int hr_extentsize; int hr_keepdirty; scalar_t__ hr_role; int /*<<< orphan*/  hr_localpath; scalar_t__ hr_previous_role; void* hr_primary_remotecnt; void* hr_primary_localcnt; void* hr_secondary_remotecnt; void* hr_secondary_localcnt; void* hr_resuid; void* hr_localoff; void* hr_datasize; } ;
struct ebuf {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ HAST_ROLE_PRIMARY ; 
 scalar_t__ HAST_ROLE_SECONDARY ; 
 int LOCK_EX ; 
 int LOCK_NB ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int METADATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ebuf*,int /*<<< orphan*/ *,int) ; 
 struct ebuf* FUNC3 (int) ; 
 unsigned char* FUNC4 (struct ebuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ebuf*) ; 
 int errno ; 
 int FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (struct nv*) ; 
 int /*<<< orphan*/  FUNC8 (struct nv*) ; 
 char* FUNC9 (struct nv*,char*) ; 
 scalar_t__ FUNC10 (struct nv*,char*) ; 
 void* FUNC11 (struct nv*,char*) ; 
 struct nv* FUNC12 (struct ebuf*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct hast_resource*,int) ; 
 scalar_t__ FUNC19 (char const*,char*) ; 

int
FUNC20(struct hast_resource *res, bool openrw)
{
	unsigned char *buf;
	struct ebuf *eb;
	struct nv *nv;
	ssize_t done;
	const char *str;
	int rerrno;
	bool opened_here;

	opened_here = false;
	rerrno = 0;

	/*
	 * Is this first metadata_read() call for this resource?
	 */
	if (res->hr_localfd == -1) {
		if (FUNC18(res, openrw) == -1) {
			rerrno = errno;
			goto fail;
		}
		opened_here = true;
		FUNC13(1, "Obtained info about %s.", res->hr_localpath);
		if (openrw) {
			if (FUNC6(res->hr_localfd, LOCK_EX | LOCK_NB) == -1) {
				rerrno = errno;
				if (errno == EOPNOTSUPP) {
					FUNC16("Unable to lock %s (operation not supported), but continuing.",
					    res->hr_localpath);
				} else {
					FUNC14(LOG_ERR,
					    "Unable to lock %s",
					    res->hr_localpath);
					goto fail;
				}
			}
			FUNC13(1, "Locked %s.", res->hr_localpath);
		}
	}

	eb = FUNC3(METADATA_SIZE);
	if (eb == NULL) {
		rerrno = errno;
		FUNC14(LOG_ERR,
		    "Unable to allocate memory to read metadata");
		goto fail;
	}
	if (FUNC2(eb, NULL, METADATA_SIZE) == -1) {
		rerrno = errno;
		FUNC14(LOG_ERR,
		    "Unable to allocate memory to read metadata");
		FUNC5(eb);
		goto fail;
	}
	buf = FUNC4(eb, NULL);
	FUNC0(buf != NULL);
	done = FUNC17(res->hr_localfd, buf, METADATA_SIZE, 0);
	if (done == -1 || done != METADATA_SIZE) {
		rerrno = errno;
		FUNC14(LOG_ERR, "Unable to read metadata");
		FUNC5(eb);
		goto fail;
	}
	nv = FUNC12(eb);
	if (nv == NULL) {
		rerrno = errno;
		FUNC14(LOG_ERR, "Metadata read from %s is invalid",
		    res->hr_localpath);
		FUNC5(eb);
		goto fail;
	}

	str = FUNC9(nv, "resource");
	if (str != NULL && FUNC19(str, res->hr_name) != 0) {
		FUNC15("Provider %s is not part of resource %s.",
		    res->hr_localpath, res->hr_name);
		FUNC8(nv);
		goto fail;
	}

	res->hr_datasize = FUNC11(nv, "datasize");
	res->hr_extentsize = (int)FUNC10(nv, "extentsize");
	res->hr_keepdirty = (int)FUNC10(nv, "keepdirty");
	res->hr_localoff = FUNC11(nv, "offset");
	res->hr_resuid = FUNC11(nv, "resuid");
	if (res->hr_role != HAST_ROLE_PRIMARY) {
		/* Secondary or init role. */
		res->hr_secondary_localcnt = FUNC11(nv, "localcnt");
		res->hr_secondary_remotecnt = FUNC11(nv, "remotecnt");
	}
	if (res->hr_role != HAST_ROLE_SECONDARY) {
		/* Primary or init role. */
		res->hr_primary_localcnt = FUNC11(nv, "localcnt");
		res->hr_primary_remotecnt = FUNC11(nv, "remotecnt");
	}
	str = FUNC9(nv, "prevrole");
	if (str != NULL) {
		if (FUNC19(str, "primary") == 0)
			res->hr_previous_role = HAST_ROLE_PRIMARY;
		else if (FUNC19(str, "secondary") == 0)
			res->hr_previous_role = HAST_ROLE_SECONDARY;
	}

	if (FUNC7(nv) != 0) {
		errno = rerrno = FUNC7(nv);
		FUNC14(LOG_ERR, "Unable to read metadata from %s",
		    res->hr_localpath);
		FUNC8(nv);
		goto fail;
	}
	FUNC8(nv);
	return (0);
fail:
	if (opened_here) {
		FUNC1(res->hr_localfd);
		res->hr_localfd = -1;
	}
	errno = rerrno;
	return (-1);
}