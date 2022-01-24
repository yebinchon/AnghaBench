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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t FUNC5 () ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (char*,int,int) ; 
 int FUNC11 (int,char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,char*,int,int) ; 

__attribute__((used)) static void
FUNC13(const atf_tc_t *tc, const char *mp)
{
	char buf[1024];
	char *b2, *b3;
	size_t therange = FUNC5()+1;
	int fd;

	FUNC1();

	FUNC4(fd = FUNC10("file", O_RDWR|O_CREAT|O_TRUNC, 0666));

	FUNC8(buf, 'A', sizeof(buf));
	FUNC4(FUNC12(fd, buf, 1, FUNC5()));

	FUNC8(buf, 'B', sizeof(buf));
	FUNC4(FUNC12(fd, buf, 2, FUNC5()-1));

	FUNC3(b2 = FUNC6(2 * FUNC5()), NULL);
	FUNC3(b3 = FUNC6(2 * FUNC5()), NULL);

	FUNC4(FUNC11(fd, b2, therange, 0));

	FUNC8(b3, 0, therange);
	FUNC8(b3 + FUNC5() - 1, 'B', 2);

	FUNC0(FUNC7(b2, b3, therange), 0);

	FUNC9(fd);
	FUNC2();
}