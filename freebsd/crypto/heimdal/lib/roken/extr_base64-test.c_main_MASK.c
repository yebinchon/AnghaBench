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
 int FUNC0 (char*,char*) ; 
 int FUNC1 (void*,size_t,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,void*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 char* FUNC6 (char*) ; 

int
FUNC7(int argc, char **argv)
{
    int numerr = 0;
    int numtest = 1;
    struct test {
	void *data;
	size_t len;
	const char *result;
    } *t, tests[] = {
	{ "", 0 , "" },
	{ "1", 1, "MQ==" },
	{ "22", 2, "MjI=" },
	{ "333", 3, "MzMz" },
	{ "4444", 4, "NDQ0NA==" },
	{ "55555", 5, "NTU1NTU=" },
	{ "abc:def", 7, "YWJjOmRlZg==" },
	{ NULL }
    };
    for(t = tests; t->data; t++) {
	char *str;
	int len;
	len = FUNC1(t->data, t->len, &str);
	if(FUNC5(str, t->result) != 0) {
	    FUNC2(stderr, "failed test %d: %s != %s\n", numtest,
		    str, t->result);
	    numerr++;
	}
	FUNC3(str);
	str = FUNC6(t->result);
	len = FUNC0(t->result, str);
	if(len != t->len) {
	    FUNC2(stderr, "failed test %d: len %lu != %lu\n", numtest,
		    (unsigned long)len, (unsigned long)t->len);
	    numerr++;
	} else if(FUNC4(str, t->data, t->len) != 0) {
	    FUNC2(stderr, "failed test %d: data\n", numtest);
	    numerr++;
	}
	FUNC3(str);
	numtest++;
    }

    {
	char str[32];
	if(FUNC0("M=M=", str) != -1) {
	    FUNC2(stderr, "failed test %d: successful decode of `M=M='\n",
		    numtest++);
	    numerr++;
	}
	if(FUNC0("MQ===", str) != -1) {
	    FUNC2(stderr, "failed test %d: successful decode of `MQ==='\n",
		    numtest++);
	    numerr++;
	}
    }
    return numerr;
}