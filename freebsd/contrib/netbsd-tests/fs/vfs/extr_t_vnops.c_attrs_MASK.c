#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_6__ {int tv_sec; int tv_nsec; } ;
struct TYPE_5__ {int tv_sec; int tv_nsec; } ;
struct stat {int st_uid; int st_gid; int st_mode; TYPE_2__ st_mtimespec; TYPE_1__ st_atimespec; } ;
typedef  int /*<<< orphan*/  atf_tc_t ;
struct TYPE_8__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int ACCESSPERMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  TESTFILE ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct timeval*) ; 
 TYPE_4__ st_atimespec ; 
 int /*<<< orphan*/  st_gid ; 
 int /*<<< orphan*/  st_mode ; 
 TYPE_3__ st_mtimespec ; 
 int /*<<< orphan*/  st_uid ; 

__attribute__((used)) static void
FUNC14(const atf_tc_t *tc, const char *mp)
{
	struct stat sb, sb2;
	struct timeval tv[2];
	int fd;

	FUNC1();
	FUNC7(fd = FUNC11(TESTFILE, O_RDWR | O_CREAT, 0755));
	FUNC7(FUNC10(fd));
	FUNC7(FUNC12(TESTFILE, &sb));
	if (!(FUNC4(tc) || FUNC5(tc))) {
		FUNC7(FUNC9(TESTFILE, 1, 2));
		sb.st_uid = 1;
		sb.st_gid = 2;
		FUNC7(FUNC8(TESTFILE, 0123));
		sb.st_mode = (sb.st_mode & ~ACCESSPERMS) | 0123;
	}

	tv[0].tv_sec = 1000000000; /* need something >1980 for msdosfs */
	tv[0].tv_usec = 1;
	tv[1].tv_sec = 1000000002; /* need even seconds for msdosfs */
	tv[1].tv_usec = 3;
	FUNC7(FUNC13(TESTFILE, tv));
	FUNC7(FUNC13(TESTFILE, tv)); /* XXX: utimes & birthtime */
	sb.st_atimespec.tv_sec = 1000000000;
	sb.st_atimespec.tv_nsec = 1000;
	sb.st_mtimespec.tv_sec = 1000000002;
	sb.st_mtimespec.tv_nsec = 3000;

	FUNC7(FUNC12(TESTFILE, &sb2));
#define CHECK(a) ATF_REQUIRE_EQ(sb.a, sb2.a)
	if (!(FUNC4(tc) || FUNC5(tc))) {
		CHECK(st_uid);
		CHECK(st_gid);
		CHECK(st_mode);
	}
	if (!FUNC4(tc)) {
		/* msdosfs has only access date, not time */
		CHECK(st_atimespec.tv_sec);
	}
	CHECK(st_mtimespec.tv_sec);
	if (!(FUNC3(tc) || FUNC4(tc) ||
	      FUNC5(tc) || FUNC6(tc))) {
		CHECK(st_atimespec.tv_nsec);
		CHECK(st_mtimespec.tv_nsec);
	}
#undef  CHECK

	FUNC2();
}