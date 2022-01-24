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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (size_t) ; 

char * FUNC6(const char *name, size_t *len)
{
	FILE *f;
	char *buf;

	f = FUNC1(name, "rb");
	if (f == NULL)
		return NULL;

	FUNC3(f, 0, SEEK_END);
	*len = FUNC4(f);
	FUNC3(f, 0, SEEK_SET);

	buf = FUNC5(*len);
	if (buf == NULL) {
		FUNC0(f);
		return NULL;
	}

	FUNC2(buf, 1, *len, f);
	FUNC0(f);

	return buf;
}