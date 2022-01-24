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
struct mtree_entry {TYPE_1__* dir_info; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;
struct TYPE_2__ {int virtual; } ;

/* Variables and functions */
 int AE_IFDIR ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 struct archive_entry* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct archive_write*,struct archive_entry*,struct mtree_entry**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct archive_write *a, const char *pathname,
    struct mtree_entry **m_entry)
{
	struct archive_entry *entry;
	struct mtree_entry *file;
	int r;

	entry = FUNC2();
	if (entry == NULL) {
		*m_entry = NULL;
		FUNC5(&a->archive, ENOMEM,
		    "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}
	FUNC0(entry, pathname);
	FUNC3(entry, AE_IFDIR | 0755);
	FUNC4(entry, FUNC7(NULL), 0);

	r = FUNC6(a, entry, &file);
	FUNC1(entry);
	if (r < ARCHIVE_WARN) {
		*m_entry = NULL;
		FUNC5(&a->archive, ENOMEM,
		    "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}

	file->dir_info->virtual = 1;

	*m_entry = file;
	return (ARCHIVE_OK);
}