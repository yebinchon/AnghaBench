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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct nv {int dummy; } ;
struct hast_resource {scalar_t__ hr_resuid; int /*<<< orphan*/  hr_remotein; int /*<<< orphan*/  hr_remoteaddr; void* hr_secondary_remotecnt; void* hr_secondary_localcnt; void* hr_primary_remotecnt; void* hr_primary_localcnt; int /*<<< orphan*/  hr_local_sectorsize; scalar_t__ hr_extentsize; scalar_t__ hr_local_mediasize; int /*<<< orphan*/  hr_localfd; scalar_t__ hr_datasize; int /*<<< orphan*/  hr_remoteout; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_SPLITBRAIN ; 
 int /*<<< orphan*/  EX_CONFIG ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/  HAST_SYNCSRC_PRIMARY ; 
 int /*<<< orphan*/  HAST_SYNCSRC_SECONDARY ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ METADATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hast_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int FUNC5 (struct hast_resource*,int /*<<< orphan*/ ,struct nv*,unsigned char*,size_t) ; 
 unsigned char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int,size_t) ; 
 int FUNC8 (struct hast_resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct nv*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct nv*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct nv*,void*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 struct nv* FUNC16 () ; 
 scalar_t__ FUNC17 (struct nv*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct nv*) ; 
 void* FUNC19 (struct nv*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,unsigned char*,size_t,scalar_t__) ; 
 int FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC29(struct hast_resource *res, struct nv *nvin)
{
	uint64_t resuid;
	struct nv *nvout;
	unsigned char *map;
	size_t mapsize;

#ifdef notyet
	/* Setup direction. */
	if (proto_send(res->hr_remoteout, NULL, 0) == -1)
		pjdlog_errno(LOG_WARNING, "Unable to set connection direction");
#endif

	nvout = FUNC16();
	FUNC10(nvout, (int64_t)res->hr_datasize, "datasize");
	FUNC9(nvout, (int32_t)res->hr_extentsize, "extentsize");
	resuid = FUNC19(nvin, "resuid");
	res->hr_primary_localcnt = FUNC19(nvin, "localcnt");
	res->hr_primary_remotecnt = FUNC19(nvin, "remotecnt");
	FUNC14(nvout, res->hr_secondary_localcnt, "localcnt");
	FUNC14(nvout, res->hr_secondary_remotecnt, "remotecnt");
	mapsize = FUNC1(res->hr_local_mediasize -
	    METADATA_SIZE, res->hr_extentsize, res->hr_local_sectorsize);
	map = FUNC6(mapsize);
	if (map == NULL) {
		FUNC23(EX_TEMPFAIL,
		    "Unable to allocate memory (%zu bytes) for activemap.",
		    mapsize);
	}
	/*
	 * When we work as primary and secondary is missing we will increase
	 * localcnt in our metadata. When secondary is connected and synced
	 * we make localcnt be equal to remotecnt, which means nodes are more
	 * or less in sync.
	 * Split-brain condition is when both nodes are not able to communicate
	 * and are both configured as primary nodes. In turn, they can both
	 * make incompatible changes to the data and we have to detect that.
	 * Under split-brain condition we will increase our localcnt on first
	 * write and remote node will increase its localcnt on first write.
	 * When we connect we can see that primary's localcnt is greater than
	 * our remotecnt (primary was modified while we weren't watching) and
	 * our localcnt is greater than primary's remotecnt (we were modified
	 * while primary wasn't watching).
	 * There are many possible combinations which are all gathered below.
	 * Don't pay too much attention to exact numbers, the more important
	 * is to compare them. We compare secondary's local with primary's
	 * remote and secondary's remote with primary's local.
	 * Note that every case where primary's localcnt is smaller than
	 * secondary's remotecnt and where secondary's localcnt is smaller than
	 * primary's remotecnt should be impossible in practise. We will perform
	 * full synchronization then. Those cases are marked with an asterisk.
	 * Regular synchronization means that only extents marked as dirty are
	 * synchronized (regular synchronization).
	 *
	 * SECONDARY METADATA PRIMARY METADATA
	 * local=3 remote=3   local=2 remote=2*  ?! Full sync from secondary.
	 * local=3 remote=3   local=2 remote=3*  ?! Full sync from primary.
	 * local=3 remote=3   local=2 remote=4*  ?! Full sync from primary.
	 * local=3 remote=3   local=3 remote=2   Primary is out-of-date,
	 *                                       regular sync from secondary.
	 * local=3 remote=3   local=3 remote=3   Regular sync just in case.
	 * local=3 remote=3   local=3 remote=4*  ?! Full sync from primary.
	 * local=3 remote=3   local=4 remote=2   Split-brain condition.
	 * local=3 remote=3   local=4 remote=3   Secondary out-of-date,
	 *                                       regular sync from primary.
	 * local=3 remote=3   local=4 remote=4*  ?! Full sync from primary.
	 */
	if (res->hr_resuid == 0) {
		/*
		 * Provider is used for the first time. If primary node done no
		 * writes yet as well (we will find "virgin" argument) then
		 * there is no need to synchronize anything. If primary node
		 * done any writes already we have to synchronize everything.
		 */
		FUNC0(res->hr_secondary_localcnt == 0);
		res->hr_resuid = resuid;
		if (FUNC8(res) == -1)
			FUNC3(EX_NOINPUT);
		if (FUNC17(nvin, "virgin")) {
			FUNC4(map);
			map = NULL;
			mapsize = 0;
		} else {
			FUNC7(map, 0xff, mapsize);
		}
		FUNC11(nvout, 1, "virgin");
		FUNC15(nvout, HAST_SYNCSRC_PRIMARY, "syncsrc");
	} else if (res->hr_resuid != resuid) {
		char errmsg[256];

		FUNC4(map);
		(void)FUNC28(errmsg, sizeof(errmsg),
		    "Resource unique ID mismatch (primary=%ju, secondary=%ju).",
		    (uintmax_t)resuid, (uintmax_t)res->hr_resuid);
		FUNC21("%s", errmsg);
		FUNC12(nvout, errmsg, "errmsg");
		if (FUNC5(res, res->hr_remotein, nvout,
		    NULL, 0) == -1) {
			FUNC22(EX_TEMPFAIL,
			    "Unable to send response to %s",
			    res->hr_remoteaddr);
		}
		FUNC18(nvout);
		FUNC3(EX_CONFIG);
	} else if (
	    /* Is primary out-of-date? */
	    (res->hr_secondary_localcnt > res->hr_primary_remotecnt &&
	     res->hr_secondary_remotecnt == res->hr_primary_localcnt) ||
	    /* Are the nodes more or less in sync? */
	    (res->hr_secondary_localcnt == res->hr_primary_remotecnt &&
	     res->hr_secondary_remotecnt == res->hr_primary_localcnt) ||
	    /* Is secondary out-of-date? */
	    (res->hr_secondary_localcnt == res->hr_primary_remotecnt &&
	     res->hr_secondary_remotecnt < res->hr_primary_localcnt)) {
		/*
		 * Nodes are more or less in sync or one of the nodes is
		 * out-of-date.
		 * It doesn't matter at this point which one, we just have to
		 * send out local bitmap to the remote node.
		 */
		if (FUNC25(res->hr_localfd, map, mapsize, METADATA_SIZE) !=
		    (ssize_t)mapsize) {
			FUNC22(LOG_ERR, "Unable to read activemap");
		}
		if (res->hr_secondary_localcnt > res->hr_primary_remotecnt &&
		     res->hr_secondary_remotecnt == res->hr_primary_localcnt) {
			/* Primary is out-of-date, sync from secondary. */
			FUNC15(nvout, HAST_SYNCSRC_SECONDARY, "syncsrc");
		} else {
			/*
			 * Secondary is out-of-date or counts match.
			 * Sync from primary.
			 */
			FUNC15(nvout, HAST_SYNCSRC_PRIMARY, "syncsrc");
		}
	} else if (res->hr_secondary_localcnt > res->hr_primary_remotecnt &&
	     res->hr_primary_localcnt > res->hr_secondary_remotecnt) {
		/*
		 * Not good, we have split-brain condition.
		 */
		FUNC4(map);
		FUNC21("Split-brain detected, exiting.");
		FUNC12(nvout, "Split-brain condition!", "errmsg");
		if (FUNC5(res, res->hr_remotein, nvout,
		    NULL, 0) == -1) {
			FUNC22(EX_TEMPFAIL,
			    "Unable to send response to %s",
			    res->hr_remoteaddr);
		}
		FUNC18(nvout);
		/* Exit on split-brain. */
		FUNC2(res, EVENT_SPLITBRAIN);
		FUNC3(EX_CONFIG);
	} else /* if (res->hr_secondary_localcnt < res->hr_primary_remotecnt ||
	    res->hr_primary_localcnt < res->hr_secondary_remotecnt) */ {
		/*
		 * This should never happen in practise, but we will perform
		 * full synchronization.
		 */
		FUNC0(res->hr_secondary_localcnt < res->hr_primary_remotecnt ||
		    res->hr_primary_localcnt < res->hr_secondary_remotecnt);
		mapsize = FUNC1(res->hr_local_mediasize -
		    METADATA_SIZE, res->hr_extentsize,
		    res->hr_local_sectorsize);
		FUNC7(map, 0xff, mapsize);
		if (res->hr_secondary_localcnt > res->hr_primary_remotecnt) {
			/* In this one of five cases sync from secondary. */
			FUNC15(nvout, HAST_SYNCSRC_SECONDARY, "syncsrc");
		} else {
			/* For the rest four cases sync from primary. */
			FUNC15(nvout, HAST_SYNCSRC_PRIMARY, "syncsrc");
		}
		FUNC24("This should never happen, asking for full synchronization (primary(local=%ju, remote=%ju), secondary(local=%ju, remote=%ju)).",
		    (uintmax_t)res->hr_primary_localcnt,
		    (uintmax_t)res->hr_primary_remotecnt,
		    (uintmax_t)res->hr_secondary_localcnt,
		    (uintmax_t)res->hr_secondary_remotecnt);
	}
	FUNC13(nvout, (uint32_t)mapsize, "mapsize");
	if (FUNC5(res, res->hr_remotein, nvout, map, mapsize) == -1) {
		FUNC22(EX_TEMPFAIL, "Unable to send activemap to %s",
		    res->hr_remoteaddr);
	}
	if (map != NULL)
		FUNC4(map);
	FUNC18(nvout);
#ifdef notyet
	/* Setup direction. */
	if (proto_recv(res->hr_remotein, NULL, 0) == -1)
		pjdlog_errno(LOG_WARNING, "Unable to set connection direction");
#endif
}