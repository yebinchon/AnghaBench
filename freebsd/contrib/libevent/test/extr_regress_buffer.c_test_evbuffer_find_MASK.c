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
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int EVBUFFER_INITIAL_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int) ; 
 unsigned char* FUNC2 (struct evbuffer*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 struct evbuffer* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(void *ptr)
{
	unsigned char* p;
	const char* test1 = "1234567890\r\n";
	const char* test2 = "1234567890\r";
#define EVBUFFER_INITIAL_LENGTH 256
	char test3[EVBUFFER_INITIAL_LENGTH];
	unsigned int i;
	struct evbuffer * buf = FUNC4();

	FUNC8(buf);

	/* make sure evbuffer_find doesn't match past the end of the buffer */
	FUNC0(buf, (unsigned char*)test1, FUNC6(test1));
	FUNC5(buf);
	FUNC1(buf, FUNC6(test1));
	FUNC5(buf);
	FUNC0(buf, (unsigned char*)test2, FUNC6(test2));
	FUNC5(buf);
	p = FUNC2(buf, (unsigned char*)"\r\n", 2);
	FUNC9(p == NULL);

	/*
	 * drain the buffer and do another find; in r309 this would
	 * read past the allocated buffer causing a valgrind error.
	 */
	FUNC1(buf, FUNC6(test2));
	FUNC5(buf);
	for (i = 0; i < EVBUFFER_INITIAL_LENGTH; ++i)
		test3[i] = 'a';
	test3[EVBUFFER_INITIAL_LENGTH - 1] = 'x';
	FUNC0(buf, (unsigned char *)test3, EVBUFFER_INITIAL_LENGTH);
	FUNC5(buf);
	p = FUNC2(buf, (unsigned char *)"xy", 2);
	FUNC9(p == NULL);

	/* simple test for match at end of allocated buffer */
	p = FUNC2(buf, (unsigned char *)"ax", 2);
	FUNC8(p != NULL);
	FUNC9(FUNC7((char*)p, "ax", 2) == 0);

end:
	if (buf)
		FUNC3(buf);
}