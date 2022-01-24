#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uma_type_header {int uth_allocs; int uth_frees; int uth_size; int uth_limit; int uth_zone_flags; scalar_t__ uth_keg_free; scalar_t__ uth_zone_free; int /*<<< orphan*/  uth_rsize; int /*<<< orphan*/  uth_xdomain; int /*<<< orphan*/  uth_sleeps; int /*<<< orphan*/  uth_fails; int /*<<< orphan*/  uth_name; } ;
struct uma_stream_header {scalar_t__ ush_version; int ush_maxcpus; int ush_count; } ;
struct uma_percpu_stat {scalar_t__ ups_frees; scalar_t__ ups_allocs; scalar_t__ ups_cache_free; } ;
struct memory_type_list {void* mtl_error; int /*<<< orphan*/  mtl_list; } ;
struct memory_type {int mt_numallocs; int mt_numfrees; int mt_size; int mt_memalloced; int mt_memfreed; int mt_bytes; int mt_countlimit; int mt_byteslimit; int mt_count; scalar_t__ mt_zonefree; int /*<<< orphan*/  mt_free; scalar_t__ mt_kegfree; int /*<<< orphan*/  mt_rsize; TYPE_1__* mt_percpu_cache; int /*<<< orphan*/  mt_xdomain; int /*<<< orphan*/  mt_sleeps; int /*<<< orphan*/  mt_failures; } ;
typedef  int /*<<< orphan*/  maxid ;
typedef  int /*<<< orphan*/  count ;
struct TYPE_2__ {scalar_t__ mtp_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCATOR_UMA ; 
 scalar_t__ EACCES ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ EPERM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* MEMSTAT_ERROR_DATAERROR ; 
 void* MEMSTAT_ERROR_NOMEMORY ; 
 void* MEMSTAT_ERROR_PERMISSION ; 
 void* MEMSTAT_ERROR_VERSION ; 
 scalar_t__ UMA_STREAM_VERSION ; 
 int UTH_ZONE_SECONDARY ; 
 struct memory_type* FUNC1 (struct memory_type_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct memory_type*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct memory_type_list*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 struct memory_type* FUNC6 (struct memory_type_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,...) ; 

int
FUNC8(struct memory_type_list *list, int flags)
{
	struct uma_stream_header *ushp;
	struct uma_type_header *uthp;
	struct uma_percpu_stat *upsp;
	struct memory_type *mtp;
	int count, hint_dontsearch, i, j, maxcpus, maxid;
	char *buffer, *p;
	size_t size;

	hint_dontsearch = FUNC0(&list->mtl_list);

	/*
	 * Query the number of CPUs, number of malloc types so that we can
	 * guess an initial buffer size.  We loop until we succeed or really
	 * fail.  Note that the value of maxcpus we query using sysctl is not
	 * the version we use when processing the real data -- that is read
	 * from the header.
	 */
retry:
	size = sizeof(maxid);
	if (FUNC7("kern.smp.maxid", &maxid, &size, NULL, 0) < 0) {
		if (errno == EACCES || errno == EPERM)
			list->mtl_error = MEMSTAT_ERROR_PERMISSION;
		else
			list->mtl_error = MEMSTAT_ERROR_DATAERROR;
		return (-1);
	}
	if (size != sizeof(maxid)) {
		list->mtl_error = MEMSTAT_ERROR_DATAERROR;
		return (-1);
	}

	size = sizeof(count);
	if (FUNC7("vm.zone_count", &count, &size, NULL, 0) < 0) {
		if (errno == EACCES || errno == EPERM)
			list->mtl_error = MEMSTAT_ERROR_PERMISSION;
		else
			list->mtl_error = MEMSTAT_ERROR_VERSION;
		return (-1);
	}
	if (size != sizeof(count)) {
		list->mtl_error = MEMSTAT_ERROR_DATAERROR;
		return (-1);
	}

	size = sizeof(*uthp) + count * (sizeof(*uthp) + sizeof(*upsp) *
	    (maxid + 1));

	buffer = FUNC5(size);
	if (buffer == NULL) {
		list->mtl_error = MEMSTAT_ERROR_NOMEMORY;
		return (-1);
	}

	if (FUNC7("vm.zone_stats", buffer, &size, NULL, 0) < 0) {
		/*
		 * XXXRW: ENOMEM is an ambiguous return, we should bound the
		 * number of loops, perhaps.
		 */
		if (errno == ENOMEM) {
			FUNC4(buffer);
			goto retry;
		}
		if (errno == EACCES || errno == EPERM)
			list->mtl_error = MEMSTAT_ERROR_PERMISSION;
		else
			list->mtl_error = MEMSTAT_ERROR_VERSION;
		FUNC4(buffer);
		return (-1);
	}

	if (size == 0) {
		FUNC4(buffer);
		return (0);
	}

	if (size < sizeof(*ushp)) {
		list->mtl_error = MEMSTAT_ERROR_VERSION;
		FUNC4(buffer);
		return (-1);
	}
	p = buffer;
	ushp = (struct uma_stream_header *)p;
	p += sizeof(*ushp);

	if (ushp->ush_version != UMA_STREAM_VERSION) {
		list->mtl_error = MEMSTAT_ERROR_VERSION;
		FUNC4(buffer);
		return (-1);
	}

	/*
	 * For the remainder of this function, we are quite trusting about
	 * the layout of structures and sizes, since we've determined we have
	 * a matching version and acceptable CPU count.
	 */
	maxcpus = ushp->ush_maxcpus;
	count = ushp->ush_count;
	for (i = 0; i < count; i++) {
		uthp = (struct uma_type_header *)p;
		p += sizeof(*uthp);

		if (hint_dontsearch == 0) {
			mtp = FUNC6(list, ALLOCATOR_UMA,
			    uthp->uth_name);
		} else
			mtp = NULL;
		if (mtp == NULL)
			mtp = FUNC1(list, ALLOCATOR_UMA,
			    uthp->uth_name, maxid + 1);
		if (mtp == NULL) {
			FUNC3(list);
			FUNC4(buffer);
			list->mtl_error = MEMSTAT_ERROR_NOMEMORY;
			return (-1);
		}

		/*
		 * Reset the statistics on a current node.
		 */
		FUNC2(mtp, maxid + 1);

		mtp->mt_numallocs = uthp->uth_allocs;
		mtp->mt_numfrees = uthp->uth_frees;
		mtp->mt_failures = uthp->uth_fails;
		mtp->mt_sleeps = uthp->uth_sleeps;
		mtp->mt_xdomain = uthp->uth_xdomain;

		for (j = 0; j < maxcpus; j++) {
			upsp = (struct uma_percpu_stat *)p;
			p += sizeof(*upsp);

			mtp->mt_percpu_cache[j].mtp_free =
			    upsp->ups_cache_free;
			mtp->mt_free += upsp->ups_cache_free;
			mtp->mt_numallocs += upsp->ups_allocs;
			mtp->mt_numfrees += upsp->ups_frees;
		}

		/*
		 * Values for uth_allocs and uth_frees frees are snap.
		 * It may happen that kernel reports that number of frees
		 * is greater than number of allocs. See counter(9) for
		 * details.
		 */
		if (mtp->mt_numallocs < mtp->mt_numfrees)
			mtp->mt_numallocs = mtp->mt_numfrees;

		mtp->mt_size = uthp->uth_size;
		mtp->mt_rsize = uthp->uth_rsize;
		mtp->mt_memalloced = mtp->mt_numallocs * uthp->uth_size;
		mtp->mt_memfreed = mtp->mt_numfrees * uthp->uth_size;
		mtp->mt_bytes = mtp->mt_memalloced - mtp->mt_memfreed;
		mtp->mt_countlimit = uthp->uth_limit;
		mtp->mt_byteslimit = uthp->uth_limit * uthp->uth_size;

		mtp->mt_count = mtp->mt_numallocs - mtp->mt_numfrees;
		mtp->mt_zonefree = uthp->uth_zone_free;

		/*
		 * UMA secondary zones share a keg with the primary zone.  To
		 * avoid double-reporting of free items, report keg free
		 * items only in the primary zone.
		 */
		if (!(uthp->uth_zone_flags & UTH_ZONE_SECONDARY)) {
			mtp->mt_kegfree = uthp->uth_keg_free;
			mtp->mt_free += mtp->mt_kegfree;
		}
		mtp->mt_free += mtp->mt_zonefree;
	}

	FUNC4(buffer);

	return (0);
}