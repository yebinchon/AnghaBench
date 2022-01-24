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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int,int*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8(int utf8, const char *name, const char *mbs, int width,
    int wantwidth, int wantlen, const char *wants)
{
	char	 buf[16];
	int	*wp;
	int	 len;

	if (wantlen == -2)
		wantlen = FUNC7(wants);
	(void)FUNC6(buf, utf8 ? "utf8_" : "c_", sizeof(buf));
	(void)FUNC5(buf, name, sizeof(buf));
	FUNC3(buf);
	wp = wantwidth == -2 ? NULL : &width;
	len = FUNC4(buf, sizeof(buf), wp, "%s", mbs);
	FUNC0(len, wantlen);
	FUNC1(buf, wants);
	FUNC0(width, wantwidth);
	FUNC2();
}