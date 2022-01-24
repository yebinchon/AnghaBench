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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  v2 ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (char*,int,int) ; 
 int FUNC7 (int,int*,int,int) ; 
 int FUNC8 (int,int*,int,int) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(const atf_tc_t *tc, const char *mp)
{
	int value = 0x11;
	int v2;
	int fd;

	FUNC1();

	FUNC3(fd = FUNC6("file", O_RDWR|O_CREAT, 0666));
	FUNC3(FUNC9("file"));

	FUNC3(FUNC8(fd, &value, sizeof(value), 654321));

	/*
	 * We can't easily invalidate the buffer since we hold a
	 * reference, but try to get them to flush anyway.
	 */
	FUNC3(FUNC5(fd));
	FUNC3(FUNC7(fd, &v2, sizeof(v2), 654321));
	FUNC4(fd);

	FUNC0(value, v2);
	FUNC2();
}