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
struct archive {int dummy; } ;
typedef  int (* option_handler ) (struct archive*,char const*,char const*,char const*) ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char const**,char const**,char const**) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*) ; 

int
FUNC6(struct archive *a, const char *options,
    int magic, const char *fn, option_handler use_option)
{
	int allok = 1, anyok = 0, ignore_mod_err = 0, r;
	char *data;
	const char *s, *mod, *opt, *val;

	FUNC0(a, magic, ARCHIVE_STATE_NEW, fn);

	if (options == NULL || options[0] == '\0')
		return ARCHIVE_OK;

	if ((data = FUNC5(options)) == NULL) {
		FUNC1(a,
		    ENOMEM, "Out of memory adding file to list");
		return (ARCHIVE_FATAL);
	}
	s = (const char *)data;

	do {
		mod = opt = val = NULL;

		FUNC3(&s, &mod, &opt, &val);
		if (mod == NULL && opt != NULL &&
		    FUNC4("__ignore_wrong_module_name__", opt) == 0) {
			/* Ignore module name error */
			if (val != NULL) {
				ignore_mod_err = 1;
				anyok = 1;
			}
			continue;
		}

		r = use_option(a, mod, opt, val);
		if (r == ARCHIVE_FATAL) {
			FUNC2(data);
			return (ARCHIVE_FATAL);
		}
		if (r == ARCHIVE_FAILED && mod != NULL) {
			FUNC2(data);
			return (ARCHIVE_FAILED);
		}
		if (r == ARCHIVE_WARN - 1) {
			if (ignore_mod_err)
				continue;
			/* The module name is wrong. */
			FUNC1(a, ARCHIVE_ERRNO_MISC,
			    "Unknown module name: `%s'", mod);
			FUNC2(data);
			return (ARCHIVE_FAILED);
		}
		if (r == ARCHIVE_WARN) {
			/* The option name is wrong. No-one used this. */
			FUNC1(a, ARCHIVE_ERRNO_MISC,
			    "Undefined option: `%s%s%s'",
			    mod?mod:"", mod?":":"", opt);
			FUNC2(data);
			return (ARCHIVE_FAILED);
		}
		if (r == ARCHIVE_OK)
			anyok = 1;
		else
			allok = 0;
	} while (s != NULL);

	FUNC2(data);
	return allok ? ARCHIVE_OK : anyok ? ARCHIVE_WARN : ARCHIVE_FAILED;
}