#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpio {int init_default_conversion; int /*<<< orphan*/ * opt_sconv; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int
FUNC3(struct archive_read *a,
    const char *key, const char *val)
{
	struct cpio *cpio;
	int ret = ARCHIVE_FAILED;

	cpio = (struct cpio *)(a->format->data);
	if (FUNC2(key, "compat-2x")  == 0) {
		/* Handle filenames as libarchive 2.x */
		cpio->init_default_conversion = (val != NULL)?1:0;
		return (ARCHIVE_OK);
	} else if (FUNC2(key, "hdrcharset")  == 0) {
		if (val == NULL || val[0] == 0)
			FUNC0(&a->archive, ARCHIVE_ERRNO_MISC,
			    "cpio: hdrcharset option needs a character-set name");
		else {
			cpio->opt_sconv =
			    FUNC1(
				&a->archive, val, 0);
			if (cpio->opt_sconv != NULL)
				ret = ARCHIVE_OK;
			else
				ret = ARCHIVE_FATAL;
		}
		return (ret);
	}

	/* Note: The "warn" return is just to inform the options
	 * supervisor that we didn't handle it.  It will generate
	 * a suitable error if no one used this option. */
	return (ARCHIVE_WARN);
}