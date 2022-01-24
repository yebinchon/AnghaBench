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
struct mtree_writer {int /*<<< orphan*/  buf; int /*<<< orphan*/  ebuf; int /*<<< orphan*/  cur_dirstr; } ;
struct archive_write {struct mtree_writer* format_data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mtree_writer*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtree_writer*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtree_writer*) ; 

__attribute__((used)) static int
FUNC4(struct archive_write *a)
{
	struct mtree_writer *mtree= a->format_data;

	if (mtree == NULL)
		return (ARCHIVE_OK);

	/* Make sure we do not leave any entries. */
	FUNC3(mtree);
	FUNC0(&mtree->cur_dirstr);
	FUNC0(&mtree->ebuf);
	FUNC0(&mtree->buf);
	FUNC1(mtree);
	FUNC2(mtree);
	a->format_data = NULL;
	return (ARCHIVE_OK);
}