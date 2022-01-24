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
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (size_t) ; 

char * FUNC7(const char *name, size_t *len)
{
	FILE *f;
	char *buf;
	long pos;

	f = FUNC1(name, "rb");
	if (f == NULL)
		return NULL;

	if (FUNC3(f, 0, SEEK_END) < 0 || (pos = FUNC4(f)) < 0) {
		FUNC0(f);
		return NULL;
	}
	*len = pos;
	if (FUNC3(f, 0, SEEK_SET) < 0) {
		FUNC0(f);
		return NULL;
	}

	buf = FUNC6(*len);
	if (buf == NULL) {
		FUNC0(f);
		return NULL;
	}

	if (FUNC2(buf, 1, *len, f) != *len) {
		FUNC0(f);
		FUNC5(buf);
		return NULL;
	}

	FUNC0(f);

	return buf;
}