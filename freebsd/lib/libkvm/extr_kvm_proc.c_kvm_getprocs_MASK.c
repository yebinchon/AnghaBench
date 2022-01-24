#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct nlist {char* n_name; scalar_t__ n_type; int /*<<< orphan*/  n_value; } ;
struct kinfo_proc {int ki_structsize; } ;
struct TYPE_15__ {struct kinfo_proc* procbase; int /*<<< orphan*/  program; TYPE_1__* arch; } ;
typedef  TYPE_2__ kvm_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* ka_native ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int CTL_KERN ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int KERN_PROC ; 
 int KERN_PROC_ALL ; 
 int KERN_PROC_INC_THREAD ; 
 int KERN_PROC_PROC ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct kinfo_proc* FUNC4 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC5 (TYPE_2__*,struct kinfo_proc*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int cpu_tick_frequency ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int hz ; 
 int FUNC8 (TYPE_2__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,struct nlist*) ; 
 struct kinfo_proc* FUNC10 (struct kinfo_proc*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (int*,int,struct kinfo_proc*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ticks ; 

struct kinfo_proc *
FUNC13(kvm_t *kd, int op, int arg, int *cnt)
{
	int mib[4], st, nprocs;
	size_t size, osize;
	int temp_op;

	if (kd->procbase != 0) {
		FUNC7((void *)kd->procbase);
		/*
		 * Clear this pointer in case this call fails.  Otherwise,
		 * kvm_close() will free it again.
		 */
		kd->procbase = 0;
	}
	if (FUNC0(kd)) {
		size = 0;
		mib[0] = CTL_KERN;
		mib[1] = KERN_PROC;
		mib[2] = op;
		mib[3] = arg;
		temp_op = op & ~KERN_PROC_INC_THREAD;
		st = FUNC12(mib,
		    temp_op == KERN_PROC_ALL || temp_op == KERN_PROC_PROC ?
		    3 : 4, NULL, &size, NULL, 0);
		if (st == -1) {
			FUNC6(kd, kd->program, "kvm_getprocs");
			return (0);
		}
		/*
		 * We can't continue with a size of 0 because we pass
		 * it to realloc() (via _kvm_realloc()), and passing 0
		 * to realloc() results in undefined behavior.
		 */
		if (size == 0) {
			/*
			 * XXX: We should probably return an invalid,
			 * but non-NULL, pointer here so any client
			 * program trying to dereference it will
			 * crash.  However, _kvm_freeprocs() calls
			 * free() on kd->procbase if it isn't NULL,
			 * and free()'ing a junk pointer isn't good.
			 * Then again, _kvm_freeprocs() isn't used
			 * anywhere . . .
			 */
			kd->procbase = FUNC4(kd, 1);
			goto liveout;
		}
		do {
			size += size / 10;
			kd->procbase = (struct kinfo_proc *)
			    FUNC5(kd, kd->procbase, size);
			if (kd->procbase == NULL)
				return (0);
			osize = size;
			st = FUNC12(mib, temp_op == KERN_PROC_ALL ||
			    temp_op == KERN_PROC_PROC ? 3 : 4,
			    kd->procbase, &size, NULL, 0);
		} while (st == -1 && errno == ENOMEM && size == osize);
		if (st == -1) {
			FUNC6(kd, kd->program, "kvm_getprocs");
			return (0);
		}
		/*
		 * We have to check the size again because sysctl()
		 * may "round up" oldlenp if oldp is NULL; hence it
		 * might've told us that there was data to get when
		 * there really isn't any.
		 */
		if (size > 0 &&
		    kd->procbase->ki_structsize != sizeof(struct kinfo_proc)) {
			FUNC2(kd, kd->program,
			    "kinfo_proc size mismatch (expected %zu, got %d)",
			    sizeof(struct kinfo_proc),
			    kd->procbase->ki_structsize);
			return (0);
		}
liveout:
		nprocs = size == 0 ? 0 : size / kd->procbase->ki_structsize;
	} else {
		struct nlist nl[6], *p;
		struct nlist nlz[2];

		nl[0].n_name = "_nprocs";
		nl[1].n_name = "_allproc";
		nl[2].n_name = "_ticks";
		nl[3].n_name = "_hz";
		nl[4].n_name = "_cpu_tick_frequency";
		nl[5].n_name = 0;

		nlz[0].n_name = "_zombproc";
		nlz[1].n_name = 0;

		if (!kd->arch->ka_native(kd)) {
			FUNC2(kd, kd->program,
			    "cannot read procs from non-native core");
			return (0);
		}

		if (FUNC9(kd, nl) != 0) {
			for (p = nl; p->n_type != 0; ++p)
				;
			FUNC2(kd, kd->program,
				 "%s: no such symbol", p->n_name);
			return (0);
		}
		(void) FUNC9(kd, nlz);	/* attempt to get zombproc */
		if (FUNC1(kd, nl[0].n_value, &nprocs)) {
			FUNC2(kd, kd->program, "can't read nprocs");
			return (0);
		}
		/*
		 * If returning all threads, we don't know how many that
		 * might be.  Presume that there are, on average, no more
		 * than 10 threads per process.
		 */
		if (op == KERN_PROC_ALL || (op & KERN_PROC_INC_THREAD))
			nprocs *= 10;		/* XXX */
		if (FUNC1(kd, nl[2].n_value, &ticks)) {
			FUNC2(kd, kd->program, "can't read ticks");
			return (0);
		}
		if (FUNC1(kd, nl[3].n_value, &hz)) {
			FUNC2(kd, kd->program, "can't read hz");
			return (0);
		}
		if (FUNC1(kd, nl[4].n_value, &cpu_tick_frequency)) {
			FUNC2(kd, kd->program,
			    "can't read cpu_tick_frequency");
			return (0);
		}
		size = nprocs * sizeof(struct kinfo_proc);
		kd->procbase = (struct kinfo_proc *)FUNC4(kd, size);
		if (kd->procbase == NULL)
			return (0);

		nprocs = FUNC8(kd, op, arg, nl[1].n_value,
				      nlz[0].n_value, nprocs);
		if (nprocs <= 0) {
			FUNC3(kd);
			nprocs = 0;
		}
#ifdef notdef
		else {
			size = nprocs * sizeof(struct kinfo_proc);
			kd->procbase = realloc(kd->procbase, size);
		}
#endif
	}
	*cnt = nprocs;
	return (kd->procbase);
}