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
struct thread_info {int dummy; } ;
struct kthr {int /*<<< orphan*/  tid; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  kvm_t ;
struct TYPE_2__ {int /*<<< orphan*/  tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 struct thread_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* curkthr ; 
 int /*<<< orphan*/  current_directory ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  exec_bfd ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  kgdb_resolve_symbol ; 
 struct kthr* FUNC12 () ; 
 struct kthr* FUNC13 (struct kthr*) ; 
 int /*<<< orphan*/  kgdb_trgt_ops ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * kvm ; 
 int /*<<< orphan*/  kvm_err ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC16 (int /*<<< orphan*/  (*) (char*),char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_longname ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 char* FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 char* vmcore ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ write_files ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

__attribute__((used)) static void
FUNC26(char *filename, int from_tty)
{
	struct cleanup *old_chain;
	struct thread_info *ti;
	struct kthr *kt;
	kvm_t *nkvm;
	char *temp;
	int ontop;

	FUNC21 (from_tty);
	if (!filename)
		FUNC4 ("No vmcore file specified.");
	if (!exec_bfd)
		FUNC4 ("Can't open a vmcore without a kernel");

	filename = FUNC22 (filename);
	if (filename[0] != '/') {
		temp = FUNC2 (current_directory, "/", filename, NULL);
		FUNC25(filename);
		filename = temp;
	}

	old_chain = FUNC16 (xfree, filename);

	nkvm = FUNC15(FUNC1(exec_bfd), filename,
	    write_files ? O_RDWR : O_RDONLY, kvm_err, kgdb_resolve_symbol);
	if (nkvm == NULL)
		FUNC4 ("Failed to open vmcore: %s", kvm_err);

	/* Don't free the filename now and close any previous vmcore. */
	FUNC3(old_chain);
	FUNC23(&kgdb_trgt_ops);

	kvm = nkvm;
	vmcore = filename;
	old_chain = FUNC16(kgdb_core_cleanup, NULL);

	ontop = !FUNC19 (&kgdb_trgt_ops);
	FUNC3 (old_chain);

	FUNC11();

	FUNC9();
	kt = FUNC12();
	while (kt != NULL) {
		ti = FUNC0(FUNC17(kt->tid));
		kt = FUNC13(kt);
	}
	if (curkthr != 0)
		inferior_ptid = FUNC17(curkthr->tid);

	if (ontop) {
		/* XXX: fetch registers? */
		FUNC14();
		FUNC5();
		FUNC20 (FUNC7());
		FUNC18(FUNC8(),
		    FUNC6(FUNC8()), 1);
	} else
		FUNC24(
	"you won't be able to access this vmcore until you terminate\n\
your %s; do ``info files''", target_longname);
}