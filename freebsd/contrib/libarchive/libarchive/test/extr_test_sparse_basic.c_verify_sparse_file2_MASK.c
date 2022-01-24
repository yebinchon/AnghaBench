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
struct sparse {int dummy; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 struct archive_entry* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,struct archive_entry*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int FUNC10 (char const*,int) ; 

__attribute__((used)) static void
FUNC11(struct archive *a, const char *path,
    const struct sparse *sparse, int blocks, int preopen)
{
	struct archive_entry *ae;
	int fd;

	(void)sparse; /* UNUSED */
	FUNC5((ae = FUNC1()) != NULL);
	FUNC2(ae, path);
	if (preopen)
		fd = FUNC10(path, O_RDONLY | O_BINARY);
	else
		fd = -1;
	FUNC7(a, ARCHIVE_OK,
	    FUNC4(a, ae, fd, NULL));
	if (fd >= 0)
		FUNC8(fd);
	/* Verify the number of holes only, not its offset nor its
	 * length because those alignments are deeply dependence on
	 * its filesystem. */ 
	FUNC9(path);
	FUNC6(blocks, FUNC3(ae));
	FUNC0(ae);
}