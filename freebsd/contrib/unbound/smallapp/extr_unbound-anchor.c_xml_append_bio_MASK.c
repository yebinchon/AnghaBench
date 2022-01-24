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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ verb ; 

__attribute__((used)) static void
FUNC5(BIO* b, BIO* a)
{
	char* z = NULL;
	long i, len;
	(void)FUNC1(a, 0);
	len = FUNC0(a, &z);
	if(!len || !z) {
		if(verb) FUNC4("out of memory in BIO_write\n");
		FUNC3(0);
	}
	/* remove newlines in the data here */
	for(i=0; i<len; i++) {
		if(z[i] == '\r' || z[i] == '\n')
			z[i] = ' ';
	}
	/* write to BIO */
	if(FUNC2(b, z, len) < 0) {
		if(verb) FUNC4("out of memory in BIO_write\n");
		FUNC3(0);
	}
}