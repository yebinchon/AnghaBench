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
struct mtree_option {int dummy; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtree_option*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtree_option**,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 
 size_t FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 int FUNC6 (char const*,char*) ; 

__attribute__((used)) static int
FUNC7(struct archive_read *a,
    struct mtree_option **global, const char *line)
{
	const char *next;
	size_t len;

	line += 6;
	if (FUNC3(line, '=') != NULL) {
		FUNC0(&a->archive, ARCHIVE_ERRNO_MISC,
		    "/unset shall not contain `='");
		return ARCHIVE_FATAL;
	}

	for (;;) {
		next = line + FUNC6(line, " \t\r\n");
		if (*next == '\0')
			return (ARCHIVE_OK);
		line = next;
		len = FUNC4(line, " \t\r\n");

		if (len == 3 && FUNC5(line, "all", 3) == 0) {
			FUNC1(*global);
			*global = NULL;
		} else {
			FUNC2(global, line, len);
		}

		line += len;
	}
}