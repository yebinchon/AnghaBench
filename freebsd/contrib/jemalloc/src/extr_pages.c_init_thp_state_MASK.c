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
typedef  int /*<<< orphan*/  sys_state_madvise ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SYS_close ; 
 int /*<<< orphan*/  SYS_open ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  have_madvise_huge ; 
 int /*<<< orphan*/  init_system_thp_mode ; 
 scalar_t__ FUNC2 (int,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_abort ; 
 int /*<<< orphan*/  opt_thp ; 
 scalar_t__ FUNC6 (char*,char const*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  thp_mode_always ; 
 int /*<<< orphan*/  thp_mode_default ; 
 int /*<<< orphan*/  thp_mode_never ; 
 int /*<<< orphan*/  thp_mode_not_supported ; 

__attribute__((used)) static void
FUNC8(void) {
	if (!have_madvise_huge) {
		if (FUNC4() && opt_abort) {
			FUNC3("<jemalloc>: no MADV_HUGEPAGE support\n");
			FUNC0();
		}
		goto label_error;
	}

	static const char sys_state_madvise[] = "always [madvise] never\n";
	static const char sys_state_always[] = "[always] madvise never\n";
	static const char sys_state_never[] = "always madvise [never]\n";
	char buf[sizeof(sys_state_madvise)];

#if defined(JEMALLOC_USE_SYSCALL) && defined(SYS_open)
	int fd = (int)syscall(SYS_open,
	    "/sys/kernel/mm/transparent_hugepage/enabled", O_RDONLY);
#else
	int fd = FUNC5("/sys/kernel/mm/transparent_hugepage/enabled", O_RDONLY);
#endif
	if (fd == -1) {
		goto label_error;
	}

	ssize_t nread = FUNC2(fd, &buf, sizeof(buf));
#if defined(JEMALLOC_USE_SYSCALL) && defined(SYS_close)
	syscall(SYS_close, fd);
#else
	FUNC1(fd);
#endif

	if (FUNC6(buf, sys_state_madvise, (size_t)nread) == 0) {
		init_system_thp_mode = thp_mode_default;
	} else if (FUNC6(buf, sys_state_always, (size_t)nread) == 0) {
		init_system_thp_mode = thp_mode_always;
	} else if (FUNC6(buf, sys_state_never, (size_t)nread) == 0) {
		init_system_thp_mode = thp_mode_never;
	} else {
		goto label_error;
	}
	return;
label_error:
	opt_thp = init_system_thp_mode = thp_mode_not_supported;
}