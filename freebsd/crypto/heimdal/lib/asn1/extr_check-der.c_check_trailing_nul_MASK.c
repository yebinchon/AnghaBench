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
typedef  int /*<<< orphan*/  foo ;

/* Variables and functions */
 int FUNC0 (unsigned char const*,size_t,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(void)
{
    int i, ret;
    struct {
	int fail;
	const unsigned char *p;
	size_t len;
	const char *s;
	size_t size;
    } foo[] = {
	{ 1, (const unsigned char *)"foo\x00o", 5, NULL, 0 },
	{ 1, (const unsigned char *)"\x00o", 2, NULL, 0 },
	{ 0, (const unsigned char *)"\x00\x00\x00\x00\x00", 5, "", 5 },
	{ 0, (const unsigned char *)"\x00", 1, "", 1 },
	{ 0, (const unsigned char *)"", 0, "", 0 },
	{ 0, (const unsigned char *)"foo\x00\x00", 5, "foo", 5 },
	{ 0, (const unsigned char *)"foo\0", 4, "foo", 4 },
	{ 0, (const unsigned char *)"foo", 3, "foo", 3 }
    };

    for (i = 0; i < sizeof(foo)/sizeof(foo[0]); i++) {
	char *s;
	size_t size;
	ret = FUNC0(foo[i].p, foo[i].len, &s, &size);
	if (foo[i].fail) {
	    if (ret == 0)
		FUNC1(1, "check %d NULL didn't fail", i);
	    continue;
	}
	if (ret)
	    FUNC1(1, "NULL check %d der_get_general_string failed", i);
	if (foo[i].size != size)
	    FUNC1(1, "NUL check i = %d size failed", i);
	if (FUNC3(foo[i].s, s) != 0)
	    FUNC1(1, "NUL check i = %d content failed", i);
	FUNC2(s);
    }
    return 0;
}