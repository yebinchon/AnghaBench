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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,...) ; 
 int FUNC3 (void*,size_t,char**) ; 
 scalar_t__ FUNC4 (char*,void*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (char*) ; 

int
FUNC8(int argc, char **argv)
{
    int numerr = 0;
    int numtest = 1;
    struct test {
	void *data;
	size_t len;
	const char *result;
    } *t, tests[] = {
	{ "", 0 , "" },
	{ "a", 1, "61" },
	{ "ab", 2, "6162" },
	{ "abc", 3, "616263" },
	{ "abcd", 4, "61626364" },
	{ "abcde", 5, "6162636465" },
	{ "abcdef", 6, "616263646566" },
	{ "abcdefg", 7, "61626364656667" },
	{ "=", 1, "3D" },
	{ NULL }
    };
    for(t = tests; t->data; t++) {
	char *str;
	int len;
	len = FUNC3(t->data, t->len, &str);
	if(FUNC5(str, t->result) != 0) {
	    FUNC0(stderr, "failed test %d: %s != %s\n", numtest,
		    str, t->result);
	    numerr++;
	}
	FUNC1(str);
	str = FUNC6(t->result);
	len = FUNC7(str);
	len = FUNC2(t->result, str, len);
	if(len != t->len) {
	    FUNC0(stderr, "failed test %d: len %lu != %lu\n", numtest,
		    (unsigned long)len, (unsigned long)t->len);
	    numerr++;
	} else if(FUNC4(str, t->data, t->len) != 0) {
	    FUNC0(stderr, "failed test %d: data\n", numtest);
	    numerr++;
	}
	FUNC1(str);
	numtest++;
    }

    {
	unsigned char buf[2] = { 0, 0xff } ;
	int len;

	len = FUNC2("A", buf, 1);
	if (len != 1) {
	    FUNC0(stderr, "len != 1");
	    numerr++;
	}
	if (buf[0] != 10) {
	    FUNC0(stderr, "buf != 10");
	    numerr++;
	}
	if (buf[1] != 0xff) {
	    FUNC0(stderr, "buf != 0xff");
	    numerr++;
	}

    }

    return numerr;
}