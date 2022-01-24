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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct nv {int dummy; } ;
struct hast_resource {scalar_t__ hr_role; scalar_t__ hr_previous_role; int /*<<< orphan*/  hr_localfd; int /*<<< orphan*/  hr_secondary_remotecnt; int /*<<< orphan*/  hr_secondary_localcnt; int /*<<< orphan*/  hr_primary_remotecnt; int /*<<< orphan*/  hr_primary_localcnt; int /*<<< orphan*/  hr_resuid; scalar_t__ hr_localoff; scalar_t__ hr_keepdirty; scalar_t__ hr_extentsize; scalar_t__ hr_datasize; int /*<<< orphan*/  hr_name; } ;
struct ebuf {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ HAST_ROLE_INIT ; 
 scalar_t__ HAST_ROLE_PRIMARY ; 
 scalar_t__ HAST_ROLE_SECONDARY ; 
 int /*<<< orphan*/  LOG_ERR ; 
 size_t METADATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,size_t) ; 
 unsigned char* FUNC2 (int,size_t) ; 
 unsigned char* FUNC3 (struct ebuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 struct nv* FUNC8 () ; 
 scalar_t__ FUNC9 (struct nv*) ; 
 int /*<<< orphan*/  FUNC10 (struct nv*) ; 
 struct ebuf* FUNC11 (struct nv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int FUNC14 (int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

int
FUNC16(struct hast_resource *res)
{
	struct ebuf *eb;
	struct nv *nv;
	unsigned char *buf, *ptr;
	size_t size;
	ssize_t done;
	int ret;

	buf = FUNC2(1, METADATA_SIZE);
	if (buf == NULL) {
		FUNC13("Unable to allocate %zu bytes for metadata.",
		    (size_t)METADATA_SIZE);
		return (-1);
	}

	ret = -1;

	nv = FUNC8();
	FUNC5(nv, res->hr_name, "resource");
	FUNC7(nv, (uint64_t)res->hr_datasize, "datasize");
	FUNC6(nv, (uint32_t)res->hr_extentsize, "extentsize");
	FUNC6(nv, (uint32_t)res->hr_keepdirty, "keepdirty");
	FUNC7(nv, (uint64_t)res->hr_localoff, "offset");
	FUNC7(nv, res->hr_resuid, "resuid");
	if (res->hr_role == HAST_ROLE_PRIMARY ||
	    res->hr_role == HAST_ROLE_INIT) {
		FUNC7(nv, res->hr_primary_localcnt, "localcnt");
		FUNC7(nv, res->hr_primary_remotecnt, "remotecnt");
	} else /* if (res->hr_role == HAST_ROLE_SECONDARY) */ {
		FUNC0(res->hr_role == HAST_ROLE_SECONDARY);
		FUNC7(nv, res->hr_secondary_localcnt, "localcnt");
		FUNC7(nv, res->hr_secondary_remotecnt, "remotecnt");
	}
	FUNC5(nv, FUNC15(res->hr_role), "prevrole");
	if (FUNC9(nv) != 0) {
		FUNC13("Unable to create metadata.");
		goto end;
	}
	res->hr_previous_role = res->hr_role;
	eb = FUNC11(nv);
	FUNC0(eb != NULL);
	ptr = FUNC3(eb, &size);
	FUNC0(ptr != NULL);
	FUNC0(size < METADATA_SIZE);
	FUNC1(ptr, buf, size);
	done = FUNC14(res->hr_localfd, buf, METADATA_SIZE, 0);
	if (done == -1 || done != METADATA_SIZE) {
		FUNC12(LOG_ERR, "Unable to write metadata");
		goto end;
	}
	ret = 0;
end:
	FUNC4(buf);
	FUNC10(nv);
	return (ret);
}