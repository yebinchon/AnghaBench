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
struct iso9660 {int /*<<< orphan*/  hardlink_rbtree; } ;
struct archive_rb_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_RB_DIR_RIGHT ; 
 struct archive_rb_node* FUNC0 (int /*<<< orphan*/ *) ; 
 struct archive_rb_node* FUNC1 (int /*<<< orphan*/ *,struct archive_rb_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_rb_node*) ; 

__attribute__((used)) static void
FUNC3(struct iso9660 *iso9660)
{
	struct archive_rb_node *n, *next;

	for (n = FUNC0(&(iso9660->hardlink_rbtree)); n;) {
		next = FUNC1(&(iso9660->hardlink_rbtree),
		    n, ARCHIVE_RB_DIR_RIGHT);
		FUNC2(n);
		n = next;
	}
}