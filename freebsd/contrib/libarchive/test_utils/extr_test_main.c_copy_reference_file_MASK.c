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
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 size_t FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* refdir ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char const*) ; 

void
FUNC8(const char *name)
{
	char buff[1024];
	FILE *in, *out;
	size_t rbytes;

	FUNC7(buff, "%s/%s", refdir, name);
	in = FUNC3(buff, "rb");
	FUNC1("Couldn't open reference file %s", buff);
	FUNC0(in != NULL);
	if (in == NULL)
		return;
	/* Now, decode the rest and write it. */
	/* Not a lot of error checking here; the input better be right. */
	out = FUNC3(name, "wb");
	while ((rbytes = FUNC4(buff, 1, sizeof(buff), in)) > 0) {
		if (FUNC5(buff, 1, rbytes, out) != rbytes) {
			FUNC6("Error: fwrite\n");
			break;
		}
	}
	FUNC2(out);
	FUNC2(in);
}