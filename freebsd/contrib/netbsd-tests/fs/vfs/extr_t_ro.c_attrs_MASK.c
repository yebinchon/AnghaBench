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
struct timeval {int dummy; } ;
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  AFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EROFS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int,int,int) ; 
 int FUNC10 (int,struct timeval*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct timeval*) ; 

__attribute__((used)) static void
FUNC14(const atf_tc_t *tc, const char *mp)
{
	struct timeval sometvs[2];
	struct stat sb;
	int fd;

	FUNC1();

	FUNC4(FUNC12(AFILE, &sb));

	FUNC0(EROFS, FUNC5(AFILE, 0775) == -1);
	if (!FUNC3(tc))
		FUNC0(EROFS, FUNC6(AFILE, 1, 1) == -1);
	FUNC0(EROFS, FUNC13(AFILE, sometvs) == -1);

	FUNC4(fd = FUNC11(AFILE, O_RDONLY));
	FUNC0(EROFS, FUNC8(fd, 0775) == -1);
	if (!FUNC3(tc))
		FUNC0(EROFS, FUNC9(fd, 1, 1) == -1);
	FUNC0(EROFS, FUNC10(fd, sometvs) == -1);
	FUNC4(FUNC7(fd));

	FUNC2();
}