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
struct isofile {int /*<<< orphan*/  entry; } ;
struct isoent {int dir; int virtual; } ;
struct iso9660 {int dummy; } ;
struct archive_write {int dummy; } ;

/* Variables and functions */
 int AE_IFDIR ; 
 scalar_t__ ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct isoent* FUNC10 (struct isofile*) ; 
 int /*<<< orphan*/  FUNC11 (struct iso9660*,struct isofile*) ; 
 int /*<<< orphan*/  FUNC12 (struct isofile*) ; 
 scalar_t__ FUNC13 (struct archive_write*,struct isofile*) ; 
 struct isofile* FUNC14 (struct archive_write*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct isoent *
FUNC15(struct archive_write *a, struct iso9660 *iso9660, const char *pathname)
{
	struct isofile *file;
	struct isoent *isoent;

	file = FUNC14(a, NULL);
	if (file == NULL)
		return (NULL);
	FUNC3(file->entry, pathname);
	FUNC7(file->entry);
	FUNC5(file->entry);
	FUNC6(file->entry);
	FUNC4(file->entry, FUNC9());
	FUNC0(file->entry, FUNC8());
	FUNC1(file->entry, 0555 | AE_IFDIR);
	FUNC2(file->entry, 2);
	if (FUNC13(a, file) < ARCHIVE_WARN) {
		FUNC12(file);
		return (NULL);
	}
	FUNC11(iso9660, file);

	isoent = FUNC10(file);
	if (isoent == NULL)
		return (NULL);
	isoent->dir = 1;
	isoent->virtual = 1;

	return (isoent);
}