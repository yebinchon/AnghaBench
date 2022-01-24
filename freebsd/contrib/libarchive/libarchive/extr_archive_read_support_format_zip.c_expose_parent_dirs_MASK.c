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
struct archive_string {int /*<<< orphan*/  s; } ;
struct zip_entry {int /*<<< orphan*/  node; struct archive_string rsrcname; } ;
struct zip {int /*<<< orphan*/  tree; int /*<<< orphan*/  tree_rsrc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_string*,char const*,size_t) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void
FUNC7(struct zip *zip, const char *name, size_t name_length)
{
	struct archive_string str;
	struct zip_entry *dir;
	char *s;

	FUNC4(&str);
	FUNC5(&str, name, name_length);
	for (;;) {
		s = FUNC6(str.s, '/');
		if (s == NULL)
			break;
		*s = '\0';
		/* Transfer the parent directory from zip->tree_rsrc RB
		 * tree to zip->tree RB tree to expose. */
		dir = (struct zip_entry *)
		    FUNC0(&zip->tree_rsrc, str.s);
		if (dir == NULL)
			break;
		FUNC2(&zip->tree_rsrc, &dir->node);
		FUNC3(&dir->rsrcname);
		FUNC1(&zip->tree, &dir->node);
	}
	FUNC3(&str);
}