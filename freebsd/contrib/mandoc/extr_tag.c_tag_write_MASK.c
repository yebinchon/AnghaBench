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
struct tag_entry {scalar_t__ prio; size_t nlines; char* s; struct tag_entry* lines; } ;
struct TYPE_2__ {int tfd; char* ofn; char* tfn; int /*<<< orphan*/ * tagname; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_FDOPEN ; 
 int /*<<< orphan*/  MANDOCERR_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,struct tag_entry) ; 
 int /*<<< orphan*/  FUNC4 (struct tag_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tag_entry* FUNC8 (int /*<<< orphan*/ *,unsigned int*) ; 
 struct tag_entry* FUNC9 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tag_data ; 
 TYPE_1__ tag_files ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void
FUNC13(void)
{
	FILE			*stream;
	struct tag_entry	*entry;
	size_t			 i;
	unsigned int		 slot;
	int			 empty;

	if (tag_files.tfd <= 0)
		return;
	if (tag_files.tagname != NULL && FUNC7(&tag_data,
            FUNC10(&tag_data, tag_files.tagname)) == NULL) {
		FUNC5(MANDOCERR_TAG, 0, 0, "%s", tag_files.tagname);
		tag_files.tagname = NULL;
	}
	if ((stream = FUNC2(tag_files.tfd, "w")) == NULL)
		FUNC5(MANDOCERR_FDOPEN, 0, 0, "%s", FUNC11(errno));
	empty = 1;
	entry = FUNC8(&tag_data, &slot);
	while (entry != NULL) {
		if (stream != NULL && entry->prio >= 0) {
			for (i = 0; i < entry->nlines; i++) {
				FUNC3(stream, "%s %s %zu\n",
				    entry->s, tag_files.ofn, entry->lines[i]);
				empty = 0;
			}
		}
		FUNC4(entry->lines);
		FUNC4(entry);
		entry = FUNC9(&tag_data, &slot);
	}
	FUNC6(&tag_data);
	if (stream != NULL)
		FUNC1(stream);
	else
		FUNC0(tag_files.tfd);
	tag_files.tfd = -1;
	if (empty) {
		FUNC12(tag_files.tfn);
		*tag_files.tfn = '\0';
	}
}