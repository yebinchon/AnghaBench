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
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,char*,...) ; 

int
FUNC2(struct archive *a,
    const char *m, const char *o, const char *v,
    int magic, const char *fn, option_handler use_option)
{
	const char *mp, *op, *vp;
	int r;

	FUNC0(a, magic, ARCHIVE_STATE_NEW, fn);

	mp = (m != NULL && m[0] != '\0') ? m : NULL;
	op = (o != NULL && o[0] != '\0') ? o : NULL;
	vp = (v != NULL && v[0] != '\0') ? v : NULL;

	if (op == NULL && vp == NULL)
		return (ARCHIVE_OK);
	if (op == NULL) {
		FUNC1(a, ARCHIVE_ERRNO_MISC, "Empty option");
		return (ARCHIVE_FAILED);
	}

	r = use_option(a, mp, op, vp);
	if (r == ARCHIVE_WARN - 1) {
		FUNC1(a, ARCHIVE_ERRNO_MISC,
		    "Unknown module name: `%s'", mp);
		return (ARCHIVE_FAILED);
	}
	if (r == ARCHIVE_WARN) {
		FUNC1(a, ARCHIVE_ERRNO_MISC,
		    "Undefined option: `%s%s%s%s%s%s'",
		    vp?"":"!", mp?mp:"", mp?":":"", op, vp?"=":"", vp?vp:"");
		return (ARCHIVE_FAILED);
	}
	return (r);
}