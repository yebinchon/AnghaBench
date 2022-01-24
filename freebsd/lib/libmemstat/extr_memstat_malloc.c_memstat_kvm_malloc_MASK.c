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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  type ;
struct memory_type_list {int mtl_error; int /*<<< orphan*/  mtl_list; } ;
struct memory_type {scalar_t__ mt_numfrees; scalar_t__ mt_numallocs; scalar_t__ mt_count; scalar_t__ mt_memfreed; scalar_t__ mt_memalloced; scalar_t__ mt_bytes; TYPE_3__* mt_percpu_alloc; int /*<<< orphan*/  mt_sizemask; } ;
struct malloc_type_stats {int /*<<< orphan*/  mts_size; scalar_t__ mts_numfrees; scalar_t__ mts_numallocs; scalar_t__ mts_memfreed; scalar_t__ mts_memalloced; } ;
struct malloc_type_internal {scalar_t__ mti_stats; struct malloc_type_internal* ks_handle; scalar_t__ ks_shortdesc; struct malloc_type_internal* ks_next; } ;
struct malloc_type {scalar_t__ mti_stats; struct malloc_type* ks_handle; scalar_t__ ks_shortdesc; struct malloc_type* ks_next; } ;
typedef  int /*<<< orphan*/  mts ;
typedef  int /*<<< orphan*/  mti ;
typedef  int /*<<< orphan*/  mp_maxcpus ;
typedef  int /*<<< orphan*/  kvm_t ;
typedef  int /*<<< orphan*/  kmemstatistics ;
struct TYPE_5__ {int /*<<< orphan*/  mtp_sizemask; scalar_t__ mtp_numfrees; scalar_t__ mtp_numallocs; scalar_t__ mtp_memfreed; scalar_t__ mtp_memalloced; } ;
struct TYPE_4__ {scalar_t__ n_type; scalar_t__ n_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCATOR_MALLOC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int MEMSTAT_ERROR_KVM ; 
 int MEMSTAT_ERROR_KVM_NOSYMBOL ; 
 int MEMSTAT_ERROR_NOMEMORY ; 
 int MEMTYPE_MAXNAME ; 
 size_t X_KMEMSTATISTICS ; 
 size_t X_MP_MAXCPUS ; 
 struct memory_type* FUNC1 (struct memory_type_list*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct memory_type*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct memory_type_list*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct malloc_type_internal*,struct malloc_type_internal*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,void*,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,size_t,...) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct malloc_type_stats*,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct memory_type* FUNC11 (struct memory_type_list*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* namelist ; 

int
FUNC12(struct memory_type_list *list, void *kvm_handle)
{
	struct memory_type *mtp;
	void *kmemstatistics;
	int hint_dontsearch, j, mp_maxcpus, mp_ncpus, ret;
	char name[MEMTYPE_MAXNAME];
	struct malloc_type_stats mts;
	struct malloc_type_internal mti, *mtip;
	struct malloc_type type, *typep;
	kvm_t *kvm;

	kvm = (kvm_t *)kvm_handle;

	hint_dontsearch = FUNC0(&list->mtl_list);

	if (FUNC10(kvm, namelist) != 0) {
		list->mtl_error = MEMSTAT_ERROR_KVM;
		return (-1);
	}

	if (namelist[X_KMEMSTATISTICS].n_type == 0 ||
	    namelist[X_KMEMSTATISTICS].n_value == 0) {
		list->mtl_error = MEMSTAT_ERROR_KVM_NOSYMBOL;
		return (-1);
	}

	ret = FUNC7(kvm, X_MP_MAXCPUS, &mp_maxcpus,
	    sizeof(mp_maxcpus), 0);
	if (ret != 0) {
		list->mtl_error = ret;
		return (-1);
	}

	ret = FUNC7(kvm, X_KMEMSTATISTICS, &kmemstatistics,
	    sizeof(kmemstatistics), 0);
	if (ret != 0) {
		list->mtl_error = ret;
		return (-1);
	}

	mp_ncpus = FUNC9(kvm);

	for (typep = kmemstatistics; typep != NULL; typep = type.ks_next) {
		ret = FUNC5(kvm, typep, &type, sizeof(type), 0);
		if (ret != 0) {
			FUNC3(list);
			list->mtl_error = ret;
			return (-1);
		}
		ret = FUNC6(kvm, (void *)type.ks_shortdesc, name,
		    MEMTYPE_MAXNAME);
		if (ret != 0) {
			FUNC3(list);
			list->mtl_error = ret;
			return (-1);
		}

		/*
		 * Since our compile-time value for MAXCPU may differ from the
		 * kernel's, we populate our own array.
		 */
		mtip = type.ks_handle;
		ret = FUNC5(kvm, mtip, &mti, sizeof(mti), 0);
		if (ret != 0) {
			FUNC3(list);
			list->mtl_error = ret;
			return (-1);
		}

		if (hint_dontsearch == 0) {
			mtp = FUNC11(list, ALLOCATOR_MALLOC, name);
		} else
			mtp = NULL;
		if (mtp == NULL)
			mtp = FUNC1(list, ALLOCATOR_MALLOC,
			    name, mp_maxcpus);
		if (mtp == NULL) {
			FUNC3(list);
			list->mtl_error = MEMSTAT_ERROR_NOMEMORY;
			return (-1);
		}

		/*
		 * This logic is replicated from kern_malloc.c, and should
		 * be kept in sync.
		 */
		FUNC2(mtp, mp_maxcpus);
		for (j = 0; j < mp_ncpus; j++) {
			ret = FUNC8(kvm, (u_long)mti.mti_stats, &mts,
			    sizeof(mts), j);
			if (ret != 0) {
				FUNC3(list);
				list->mtl_error = ret;
				return (-1);
			}
			mtp->mt_memalloced += mts.mts_memalloced;
			mtp->mt_memfreed += mts.mts_memfreed;
			mtp->mt_numallocs += mts.mts_numallocs;
			mtp->mt_numfrees += mts.mts_numfrees;
			mtp->mt_sizemask |= mts.mts_size;

			mtp->mt_percpu_alloc[j].mtp_memalloced =
			    mts.mts_memalloced;
			mtp->mt_percpu_alloc[j].mtp_memfreed =
			    mts.mts_memfreed;
			mtp->mt_percpu_alloc[j].mtp_numallocs =
			    mts.mts_numallocs;
			mtp->mt_percpu_alloc[j].mtp_numfrees =
			    mts.mts_numfrees;
			mtp->mt_percpu_alloc[j].mtp_sizemask =
			    mts.mts_size;
		}
		for (; j < mp_maxcpus; j++) {
			FUNC4(&mtp->mt_percpu_alloc[j],
			    sizeof(mtp->mt_percpu_alloc[0]));
		}

		mtp->mt_bytes = mtp->mt_memalloced - mtp->mt_memfreed;
		mtp->mt_count = mtp->mt_numallocs - mtp->mt_numfrees;
	}

	return (0);
}