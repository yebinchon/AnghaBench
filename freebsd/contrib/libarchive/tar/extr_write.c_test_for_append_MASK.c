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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct bsdtar {int /*<<< orphan*/ * filename; int /*<<< orphan*/ * names_from_file; int /*<<< orphan*/ ** argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct stat*) ; 

__attribute__((used)) static void
FUNC4(struct bsdtar *bsdtar)
{
	struct stat s;

	if (*bsdtar->argv == NULL && bsdtar->names_from_file == NULL)
		FUNC2(1, 0, "no files or directories specified");
	if (bsdtar->filename == NULL)
		FUNC2(1, 0, "Cannot append to stdout.");

	if (FUNC3(bsdtar->filename, &s) != 0)
		return;

	if (!FUNC1(s.st_mode) && !FUNC0(s.st_mode))
		FUNC2(1, 0,
		    "Cannot append to %s: not a regular file.",
		    bsdtar->filename);

/* Is this an appropriate check here on Windows? */
/*
	if (GetFileType(handle) != FILE_TYPE_DISK)
		lafe_errc(1, 0, "Cannot append");
*/

}