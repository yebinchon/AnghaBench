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
struct archive_string {char const* s; } ;

/* Variables and functions */
 char const* ARCHIVE_VERSION_STRING ; 
 char* FUNC0 () ; 
 char* FUNC1 () ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive_string*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_string*,char const*,int) ; 
 char* FUNC7 () ; 
 char* FUNC8 (char const*,char) ; 
 int FUNC9 (char const*) ; 

const char *
FUNC10(void)
{
	static struct archive_string str;
	static int init = 0;
	const char *zlib = FUNC7();
	const char *liblzma = FUNC2();
	const char *bzlib = FUNC0();
	const char *liblz4 = FUNC1();
	const char *libzstd = FUNC3();

	if (!init) {
		FUNC5(&str);

		FUNC4(&str, ARCHIVE_VERSION_STRING);
		if (zlib != NULL) {
			FUNC4(&str, " zlib/");
			FUNC4(&str, zlib);
		}
		if (liblzma) {
			FUNC4(&str, " liblzma/");
			FUNC4(&str, liblzma);
		}
		if (bzlib) {
			const char *p = bzlib;
			const char *sep = FUNC8(p, ',');
			if (sep == NULL)
				sep = p + FUNC9(p);
			FUNC4(&str, " bz2lib/");
			FUNC6(&str, p, sep - p);
		}
		if (liblz4) {
			FUNC4(&str, " liblz4/");
			FUNC4(&str, liblz4);
		}
		if (libzstd) {
			FUNC4(&str, " libzstd/");
			FUNC4(&str, libzstd);
		}
	}
	return str.s;
}