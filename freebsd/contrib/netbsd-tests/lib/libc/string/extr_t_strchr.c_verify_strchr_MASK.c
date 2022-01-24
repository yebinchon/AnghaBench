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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,int,int,unsigned int,unsigned int) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char*,int) ; 

__attribute__((used)) static void
FUNC4(char *buf, int ch, unsigned int t, unsigned int a)
{
	const char *off, *ok_off;

	off = FUNC3(buf, ch);
	ok_off = FUNC2(buf, ch);
	if (off == ok_off)
		return;

	FUNC1(stderr, "test_strchr(\"%s\", %#x) gave %d not %d (test %d, "
	    "alignment %d)\n",
	    buf, ch, off ? off - buf : -1, ok_off ? ok_off - buf : -1, t, a);

	FUNC0("Check stderr for details");
}